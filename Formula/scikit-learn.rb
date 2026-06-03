class ScikitLearn < Formula
  include Language::Python::Virtualenv

  desc "Python module for machine learning"
  homepage "https://scikit-learn.org"
  url "https://files.pythonhosted.org/packages/fa/6f/37092bdb25f712817231799fc5674d8e704066a8a70c1d2d40517e18b4ab/scikit_learn-1.9.0.tar.gz"
  sha256 "8833266989d3a5110178a9fae30783675460724d0e1efb13b14901d2c660c557"
  license "BSD-3-Clause"

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 cellar: :any,                 arm64_tahoe:  "fb3c7c6615bcc8e50b9e60de44d00a1e50a30407e5ab6638c69efcdb5b68aece"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dd4de7a9b13567703816298653e0100211625e92d4102a36c1aa58812c66d551"
  end

  depends_on "cython" => :build
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkgconf" => :build
  depends_on "python-setuptools" => :build
  depends_on "rust" => :build
  depends_on "libomp"
  depends_on "numpy"
  depends_on "python@3.14"
  depends_on "scipy"

  on_linux do
    depends_on "patchelf" => :build
  end

  pypi_packages exclude_packages: %w[numpy scipy]

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/41/f2/d34e8b3a08a9cc79a50b2208a93dce981fe615b64d5a4d4abee421d898df/joblib-1.5.3.tar.gz"
    sha256 "8561a3269e6801106863fd0d6d84bb737be9e7631e33aaed3fb9ce5953688da3"
  end

  resource "narwhals" do
    url "https://files.pythonhosted.org/packages/9c/1c/c80cb7719721a44846c6301ef118434bae30a423924bfad3a47f16bdc064/narwhals-2.22.0.tar.gz"
    sha256 "6486282bb7e4b4ab55963efbd8be1451b764cc4874b74d1fd625eba9dc60b86f"
  end

  resource "threadpoolctl" do
    url "https://files.pythonhosted.org/packages/b7/4d/08c89e34946fce2aec4fbb45c9016efd5f4d7f24af8e5d93296e935631d8/threadpoolctl-3.6.0.tar.gz"
    sha256 "8ab8b4aa3491d812b623328249fab5302a68d2d71745c8a4c719a2fcaba9f44e"
  end

  def python3
    "python3.14"
  end

  def install
    # Install deps and sklearn into shared site-packages (like numpy/scipy)
    resources.each do |r|
      r.stage do
        system python3, "-m", "pip", "install", *std_pip_args(build_isolation: true), "."
      end
    end
    system python3, "-m", "pip", "install", *std_pip_args(build_isolation: true), "."
  end

  def post_install
    HOMEBREW_PREFIX.glob("lib/python*.*/site-packages/sklearn/**/*.pyc").map(&:unlink)
  end

  test do
    (testpath/"test.py").write <<~PYTHON
      from sklearn.datasets import load_iris
      from sklearn.model_selection import train_test_split
      from sklearn.neighbors import KNeighborsClassifier

      X, y = load_iris(return_X_y=True)
      X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=0)
      clf = KNeighborsClassifier()
      clf.fit(X_train, y_train)
      score = clf.score(X_test, y_test)
      assert score > 0.9, f"Expected accuracy > 0.9, got {score}"
    PYTHON
    system python3, testpath/"test.py"
  end
end
