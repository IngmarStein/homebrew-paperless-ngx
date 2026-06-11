class Granian < Formula
  include Language::Python::Virtualenv

  desc "Rust HTTP server for Python ASGI/RSGI/WSGI applications"
  homepage "https://github.com/emmett-framework/granian"
  url "https://files.pythonhosted.org/packages/5c/4b/7c27442d6377607bec0802dcc1ee73554f1b3982ed6fca3dab253bee55d4/granian-2.7.6.tar.gz"
  sha256 "52c8eaa5bdd636535c4c50b62591420612297f38151786cffd8c8cd39c738da3"
  license "BSD-3-Clause"

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 cellar: :any, arm64_tahoe:  "b7286508e97712ea182e3560f69e9c33f891f797d02879ab69b55da469478a3c"
    sha256 cellar: :any, x86_64_linux: "8b1dfb52e9e4861366a35a72a63a1b9523aef547de7f9cf2a4aa4621caeb5fc4"
  end

  depends_on "maturin" => :build
  depends_on "rust" => :build
  depends_on "python@3.14"

  on_linux do
    depends_on "patchelf" => :build
  end

  pypi_packages extra_packages: ["uvloop"]

  resource "click" do
    url "https://files.pythonhosted.org/packages/9b/98/518d8e5081007684232226f475082b30087d0f585e8457db087298259f49/click-8.4.1.tar.gz"
    sha256 "918b5633eddf6b41c32d4f454bf0de810065c74e3f7dbf8ee5452f8be88d3e96"
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
