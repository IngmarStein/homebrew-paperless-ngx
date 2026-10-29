class Granian < Formula
  include Language::Python::Virtualenv

  desc "Rust HTTP server for Python ASGI/RSGI/WSGI applications"
  homepage "https://github.com/emmett-framework/granian"
  url "https://files.pythonhosted.org/packages/19/ec/1c04eea4290a7e8ebcdc115a629068978e8555b64fd74e98b6710d3af361/granian-2.8.7.tar.gz"
  sha256 "7e63163766d987156d96e1390ee7886950c6a532bbfd5aaf81c653651779446c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 cellar: :any, arm64_tahoe:  "25946b0d89ecca5fc3c6d777b453e9349293b8dc4e678f0e9bcab4bf31894c39"
    sha256 cellar: :any, x86_64_linux: "cc4059ed986491a7867babdb91c305169c60e6acf2dfa419f55d5f919d4d40d7"
  end

  depends_on "maturin" => :build
  depends_on "rust" => :build
  depends_on "python@3.14"

  on_linux do
    depends_on "patchelf" => :build
  end

  pypi_packages extra_packages: ["uvloop"]

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/fa/42/02c739ce85fb2ee8d99212c61417da8140c6b87e9d97c430bea520d76044/uvloop-0.23.0.tar.gz"
    sha256 "28d160f51ab4da3b187063652e643dea6831072add4adc1e6d62afbe73b6be27"
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
