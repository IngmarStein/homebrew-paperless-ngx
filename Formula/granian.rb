class Granian < Formula
  include Language::Python::Virtualenv

  desc "Rust HTTP server for Python ASGI/RSGI/WSGI applications"
  homepage "https://github.com/emmett-framework/granian"
  url "https://files.pythonhosted.org/packages/b0/cc/9c752e6173df02c5e37c0df7bffd50c1341109e4b4f8e5073bfd3a72dc82/granian-2.7.9.tar.gz"
  sha256 "096d9a3396b13826bc63d2cf424ed04daf1ea077beed361d48dca2d55cb4b527"
  license "BSD-3-Clause"

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 cellar: :any, arm64_tahoe:  "ce101299fb43e49e341341f95cf284dcbf737779ba3e5e4eb54a1d800ebf1368"
    sha256 cellar: :any, x86_64_linux: "5a403671ecca2e075c901ddd540204b8b189da69354c65585b39be1cf64106fc"
  end

  depends_on "maturin" => :build
  depends_on "rust" => :build
  depends_on "python@3.14"

  on_linux do
    depends_on "patchelf" => :build
  end

  pypi_packages extra_packages: ["uvloop"]

  resource "click" do
    url "https://files.pythonhosted.org/packages/76/d4/81420972a676e8ffea40450d8c8c92943e7218a78fe9b64359836cc9876b/click-8.4.2.tar.gz"
    sha256 "9a6cea6e60b17ebe0a44c5cc636d94f09bd66142c1cd7d8b4cd731c4917a15f6"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/06/f0/18d39dbd1971d6d62c4629cc7fa67f74821b0dc1f5a77af43719de7936a7/uvloop-0.22.1.tar.gz"
    sha256 "6c84bae345b9147082b17371e3dd5d42775bddce91f885499017f4607fdaf39f"
  end

  def python3
    "python3.14"
  end

  def install
    resources.each do |r|
      r.stage do
        system python3, "-m", "pip", "install", *std_pip_args(build_isolation: true), "."
      end
    end
    system python3, "-m", "pip", "install", *std_pip_args(build_isolation: true), "."
  end

  test do
    (testpath/"test.py").write <<~PYTHON
      import granian
      from granian._granian import ASGIWorker
      print(f"granian {granian.__version__}")
    PYTHON
    system python3, testpath/"test.py"
  end
end
