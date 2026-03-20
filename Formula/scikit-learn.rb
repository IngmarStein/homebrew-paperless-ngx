class ScikitLearn < Formula
  include Language::Python::Virtualenv

  desc "Python module for machine learning"
  homepage "https://scikit-learn.org"
  url "https://files.pythonhosted.org/packages/98/c2/a7855e41c9d285dfe86dc50b250978105dce513d6e459ea66a6aeb0e1e0c/scikit_learn-1.7.2.tar.gz"
  sha256 "20e9e49ecd130598f1ca38a1d85090e1a600147b9c02fa6f15d69cb53d968fda"
  license "BSD-3-Clause"

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 cellar: :any,                 arm64_tahoe:  "c0c7074bf23a857f66b19fa6e646b796e24bda8b1e8b7258d22a9f937b3c3bfd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ca7645ae82583c1d6544723cfbcbb391e8d85cf7b42519d4f16400972153dece"
  end

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkgconf" => :build
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
