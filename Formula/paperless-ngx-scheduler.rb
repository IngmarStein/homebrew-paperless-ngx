class PaperlessNgxScheduler < Formula
  include Language::Python::Virtualenv

  desc "Distributed Task Scheduler for paperless-ngx"
  homepage "https://docs.paperless-ngx.com/"
  url "https://github.com/paperless-ngx/paperless-ngx/archive/refs/tags/v2.16.1.tar.gz"
  sha256 "551149e803961f44da1c447a257f419bc5e95de6f1563e4ddf9e5696a97d5dc9"
  license "GPL-3.0-or-later"

  depends_on "paperless-ngx"
  depends_on "python@3.13"

  def install
    mkdir_p libexec/"bin"
    ln_sf Formula["paperless-ngx"].libexec/"bin/celery", libexec/"bin/celery"
  end

  service do
    run [
      opt_libexec/"bin/celery",
      "--app",
      "paperless",
      "beat",
      "--loglevel",
      "INFO",
    ]
    # The service requires:
    # - PATH with runtime binaries
    # - HOME directory for gnupg
    environment_variables(
      PATH:                         "#{HOMEBREW_PREFIX}/sbin:/usr/sbin:/usr/bin:/bin:#{HOMEBREW_PREFIX}/bin",
      HOME:                         "#{var}/paperless-ngx",
      PAPERLESS_CONFIGURATION_PATH: "#{etc}/paperless-ngx/paperless.conf",
    )
    keep_alive true
    log_path var/"log/paperless-ngx-scheduler.log"
    error_log_path var/"log/paperless-ngx-scheduler.log"
    working_dir var/"paperless-ngx"
  end

  test do
    ENV["PAPERLESS_CONSUMPTION_DIR"] = testpath/"consume"
    ENV["PAPERLESS_DATA_DIR"] = testpath/"data"
    ENV["PAPERLESS_MEDIA_ROOT"] = testpath/"media"
    ENV["PYTHONUNBUFFERED"] = "1"
    mkdir_p ENV["PAPERLESS_CONSUMPTION_DIR"]
    mkdir_p ENV["PAPERLESS_DATA_DIR"]
    mkdir_p ENV["PAPERLESS_MEDIA_ROOT"]
    output_log = testpath/"output.log"
    pid = nil
    begin
      pid = spawn(
        opt_libexec/"bin/celery",
        "--app",
        "paperless",
        "beat",
        "--loglevel",
        "INFO",
        [:out, :err] => output_log.to_s,
      )
      timeout = 60
      interval = 2
      waited = 0
      found = false
      while waited < timeout
        if output_log.exist? && output_log.read.include?("[celery.beat] beat: Starting...")
          found = true
          break
        end
        sleep interval
        waited += interval
      end
      assert found, "Did not find '[celery.beat] beat: Starting...' in output log within #{timeout} seconds"
    ensure
      if pid
        Process.kill("TERM", pid)
        Process.wait(pid)
      end
    end
  end
end
