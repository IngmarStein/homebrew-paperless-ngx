class ScikitLearn < Formula
  include Language::Python::Virtualenv

  desc "Python module for machine learning"
  homepage "https://scikit-learn.org"
  url "https://files.pythonhosted.org/packages/d2/eb/eaf5e07fcc0da7149b0e084f24e54edd7441b9a89ce7e034032ae97fe3a0/scikit_learn-1.9.1.tar.gz"
  sha256 "629cada3e33e2b9bf376cdc7614a47a4140b8aedc1d836579e359736fbd82977"
  license "BSD-3-Clause"

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 cellar: :any, arm64_tahoe:  "bbf40686c0b02cc5fa8128044823940a8a9969aeb871ec6af203e36dac2533c7"
    sha256 cellar: :any, x86_64_linux: "bb40797d59e75352ce7920b3f061ae57b4eeed070349df9fb844fac7900e1ca0"
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

  resource "cloudpickle" do
    url "https://files.pythonhosted.org/packages/27/fb/576f067976d320f5f0114a8d9fa1215425441bb35627b1993e5afd8111e5/cloudpickle-3.1.2.tar.gz"
    sha256 "7fda9eb655c9c230dab534f1983763de5835249750e85fbcef43aaa30a9a2414"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/d5/1d/537ab090f302b838943a1b56497dd53059b9a9b46a074936470173a2e207/joblib-1.6.0.tar.gz"
    sha256 "2ccc96785b12046c08fd6d55839c12857831b54a3c1673ffadd2f04bfc4eda03"
  end

  resource "narwhals" do
    url "https://files.pythonhosted.org/packages/35/68/5351e34623d253423240ea7de3f8fc74fa8ab14b1ab3c0ec4ac8997413c9/narwhals-2.26.0.tar.gz"
    sha256 "6b9cadca82f375c7e4cf584fdc86ca25da54827307a9c58f94547ee6104b82dd"
  end

  resource "threadpoolctl" do
    url "https://files.pythonhosted.org/packages/00/dc/6c58154c1c65f758ea979e7139cb76993a9cfc662d14e9be3c4a667cfb77/threadpoolctl-3.7.0.tar.gz"
    sha256 "61348cfb77d53b9242e0017029244b559b810c142ced65b4e21eeca1843959a7"
  end

  def python3
    "python3.14"
  end

  def install
    # Install deps and sklearn into shared site-packages (like numpy/scipy)
    resources.each do |r|
      next if r.name == "cloudpickle"

      r.stage do
        system python3, "-m", "pip", "install", *std_pip_args(build_isolation: true), "."
      end
    end
    system python3, "-m", "pip", "install", *std_pip_args(build_isolation: true), "."
    # cloudpickle's source distribution uses the legacy flit metadata table,
    # which flit_core 4 rejects, so install its wheel instead of building it.
    cloudpickle = resource("cloudpickle")
    wheel_args = std_pip_args(build_isolation: true) - ["--no-binary=:all:"]
    system python3, "-m", "pip", "install", *wheel_args, "cloudpickle==#{cloudpickle.version}"
  end

  post_install_steps do
    remove "{{HOMEBREW_PREFIX}}/lib/python*.*/site-packages/sklearn/**/*.pyc"
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
