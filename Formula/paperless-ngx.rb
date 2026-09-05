class PaperlessNgx < Formula
  include Language::Python::Virtualenv

  desc "Scan, index and archive all your physical documents"
  homepage "https://docs.paperless-ngx.com/"
  url "https://github.com/paperless-ngx/paperless-ngx/releases/download/v3.1.3/paperless-ngx-v3.1.3.tar.xz"
  sha256 "bc334757b151543259d556edfb39da579b17381e10ef5031c0de66f91f72dbb9"
  license "GPL-3.0-or-later"
  revision 1

  livecheck do
    url "https://github.com/paperless-ngx/paperless-ngx/releases/latest"
    strategy :github_releases
  end

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 cellar: :any, arm64_tahoe:  "54814bf774521aac97c957408ff082eeca50a56707614ba28e118d18f10bc7d3"
    sha256 cellar: :any, x86_64_linux: "1b251ec53d62845ca04f71a942f43f8a55234e1a905975df8308a9635d2b1732"
  end

  depends_on "cmake" => :build
  depends_on "cython" => :build
  depends_on "maturin" => :build
  depends_on "meson" => :build
  depends_on "patchelf" => :build
  depends_on "pkgconf" => :build
  depends_on "python-setuptools" => :build
  depends_on "rust" => :build
  depends_on "certifi"
  depends_on "cffi"
  depends_on "cryptography"
  depends_on "ghostscript"
  depends_on "gnupg"
  depends_on "granian"
  depends_on "imagemagick"
  depends_on "img2pdf"
  depends_on "jbig2enc"
  depends_on "libheif"
  depends_on "libmagic"
  depends_on "libomp"
  depends_on "libpq"
  depends_on "libyaml"
  depends_on "numpy"
  depends_on "ocrmypdf"
  depends_on "pillow"
  depends_on "poppler"
  depends_on "pycparser"
  depends_on "pydantic"
  depends_on "python@3.14"
  depends_on "pytorch"
  depends_on "qpdf"
  depends_on "s6"
  depends_on "scikit-learn"
  depends_on "scipy"
  depends_on "tesseract-lang"
  depends_on "zxing-cpp"

  uses_from_macos "libxml2"
  uses_from_macos "libxslt"
  uses_from_macos "zlib"

  # fido2: breaking change in fido2-2.0.0, so pinned to 1.2.0
  # psycopg-c: breaks `brew update-python-resources` (which can't find pg_config),
  # hence a manual addition at the end of the file using `send` to prevent it from being removed.
  pypi_packages exclude_packages: %w[
                  certifi cffi click cryptography granian joblib
                  numpy pillow pycparser psycopg-c pydantic
                  pydantic-core scikit-learn scipy sqlite-vec
                  threadpoolctl torch uvloop
                ],
                extra_packages:   ["fido2==1.2.0", "filelock", "fsspec",
                                   "jinja2", "markupsafe", "mpmath",
                                   "narwhals", "networkx",
                                   "psycopg-pool", "psycopg",
                                   "sympy", "typing-extensions"]

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/ce/f4/eec0465c2f67b2664688d0240b3212d5196fd89e741df67ddb81f8d35658/aiohappyeyeballs-2.7.1.tar.gz"
    sha256 "065665c041c42a5938ed220bdcd7230f22527fbec085e1853d2402c8a3615d9d"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/58/d9/22ce5786ac0c1653ae8b6c23bded02c1686d11f0dbb45b31ce128e0df985/aiohttp-3.14.3.tar.gz"
    sha256 "9491196535a88924a60afd5b5f434b5b203b6cc616250878dbdb223a8f7844bc"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/61/62/06741b579156360248d1ec624842ad0edf697050bbaf7c3e46394e106ad1/aiosignal-1.4.0.tar.gz"
    sha256 "f47eecd9468083c2029cc99945502cb7708b082c232f9aca65da147157b251c7"
  end

  resource "aiosqlite" do
    url "https://files.pythonhosted.org/packages/4e/8a/64761f4005f17809769d23e518d915db74e6310474e733e3593cfc854ef1/aiosqlite-0.22.1.tar.gz"
    sha256 "043e0bd78d32888c0a9ca90fc788b38796843360c855a7262a532813133a0650"
  end

  resource "amqp" do
    url "https://files.pythonhosted.org/packages/79/fc/ec94a357dfc6683d8c86f8b4cfa5416a4c36b28052ec8260c77aca96a443/amqp-5.3.1.tar.gz"
    sha256 "cddc00c725449522023bad949f70fff7b48f0b1ade74d170a6f10ab044739432"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "c7e58ce09192557605d8bbd92836d7e1d520ac9580096042c0bfd197efacf1bb"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/ea/9a/c15a60547004a3f3cea20296c934f827ddd7bdba225a2e7e9fcb5ec48c80/anyio-4.15.0.tar.gz"
    sha256 "b5c620ed540725e2579c31b17bb995b3bf02c9281c9cace04c7d186380bab85e"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/e6/26/3b59f2bdae5f640389becb1f673cded775287f5fc4f816309d9ca9a3f93d/asgiref-3.12.1.tar.gz"
    sha256 "59dcb51c272ad209d59bed5708a64a333083e86017d7fcdd67498eeab7784340"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "azure-ai-documentintelligence" do
    url "https://files.pythonhosted.org/packages/44/7b/8115cd713e2caa5e44def85f2b7ebd02a74ae74d7113ba20bdd41fd6dd80/azure_ai_documentintelligence-1.0.2.tar.gz"
    sha256 "4d75a2513f2839365ebabc0e0e1772f5601b3a8c9a71e75da12440da13b63484"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/a6/f3/b416179e408990df5db0d516283022dde0f5d0111d98c1a848e41853e81c/azure_core-1.41.0.tar.gz"
    sha256 "f46ff5dfcd230f25cf1c19e8a34b8dc08a337b2503e268bb600a16c00db8ad5a"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/b2/51899539b6ceeeb420d40ed3cd4b7a40519404f9baf3d4ac99dc413a834b/babel-2.18.0.tar.gz"
    sha256 "b80b99a14bd085fcacfa15c9165f651fbb3406e66cc603abf11c5750937c992d"
  end

  resource "banks" do
    url "https://files.pythonhosted.org/packages/6d/f0/ce5b3105a8551fdcedb509ab5340066247b3cd1b28e79f9296be2d6d3bf4/banks-2.5.0.tar.gz"
    sha256 "fdd4fd54b84dbe31cb51a1173c960697c73d683a52fb0b1d1957a557a8d6fcc8"
  end

  resource "billiard" do
    url "https://files.pythonhosted.org/packages/58/23/b12ac0bcdfb7360d664f40a00b1bda139cbbbced012c34e375506dbd0143/billiard-4.2.4.tar.gz"
    sha256 "55f542c371209e03cd5862299b74e52e4fbcba8250ba611ad94276b369b6a85f"
  end

  resource "bleach" do
    url "https://files.pythonhosted.org/packages/48/3c/e12ac860709702bd5ebeb9b56a4fe334f1001246ee1b8f2b7ee28912df7d/bleach-6.4.0.tar.gz"
    sha256 "4202482733d85cedd04e59fcb2f89f4e4c7c385a78d3c3c23c30446843a37452"
  end

  resource "brotli" do
    url "https://files.pythonhosted.org/packages/f7/16/c92ca344d646e71a43b8bb353f0a6490d7f6e06210f8554c8f874e454285/brotli-1.2.0.tar.gz"
    sha256 "e310f77e41941c13340a95976fe66a8a95b01e783d430eeaf7a2f87e0a57dd0a"
  end

  resource "celery" do
    url "https://files.pythonhosted.org/packages/e8/b4/a1233943ab5c8ea05fb877a88a0a0622bf47444b99e4991a8045ac37ea1d/celery-5.6.3.tar.gz"
    sha256 "177006bd2054b882e9f01be59abd8529e88879ef50d7918a7050c5a9f4e12912"
  end

  resource "channels" do
    url "https://files.pythonhosted.org/packages/74/92/b18d4bb54d14986a8b35215a1c9e6a7f9f4d57ca63ac9aee8290ebb4957d/channels-4.3.2.tar.gz"
    sha256 "f2bb6bfb73ad7fb4705041d07613c7b4e69528f01ef8cb9fb6c21d9295f15667"
  end

  resource "channels-redis" do
    url "https://files.pythonhosted.org/packages/ab/69/fd3407ad407a80e72ca53850eb7a4c306273e67d5bbb71a86d0e6d088439/channels_redis-4.3.0.tar.gz"
    sha256 "740ee7b54f0e28cf2264a940a24453d3f00526a96931f911fcb69228ef245dd2"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "click-didyoumean" do
    url "https://files.pythonhosted.org/packages/30/ce/217289b77c590ea1e7c24242d9ddd6e249e52c795ff10fac2c50062c48cb/click_didyoumean-0.3.1.tar.gz"
    sha256 "4f82fdff0dbe64ef8ab2279bd6aa3f6a99c3b28c05aa09cbfc07c9d7fbb5a463"
  end

  resource "click-plugins" do
    url "https://files.pythonhosted.org/packages/c3/a4/34847b59150da33690a36da3681d6bbc2ec14ee9a846bc30a6746e5984e4/click_plugins-1.1.1.2.tar.gz"
    sha256 "d7af3984a99d243c131aa1a828331e7630f4a88a9741fd05c927b204bcf92261"
  end

  resource "click-repl" do
    url "https://files.pythonhosted.org/packages/cb/a2/57f4ac79838cfae6912f997b4d1a64a858fb0c86d7fcaae6f7b58d267fca/click-repl-0.3.0.tar.gz"
    sha256 "17849c23dba3d667247dc4defe1757fff98694e90fe37474f3feebb69ced26a9"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "concurrent-log-handler" do
    url "https://files.pythonhosted.org/packages/9c/2c/ba185acc438cff6b58cd8f8dec27e7f4fcabf6968a1facbb6d0cacbde7fe/concurrent_log_handler-0.9.29.tar.gz"
    sha256 "bc37a76d3f384cbf4a98f693ebd770543edc0f4cd5c6ab6bc70e9e1d7d582265"
  end

  resource "dataclasses-json" do
    url "https://files.pythonhosted.org/packages/64/a4/f71d9cf3a5ac257c993b5ca3f93df5f7fb395c725e7f1e6479d2514173c3/dataclasses_json-0.6.7.tar.gz"
    sha256 "b6b3e528266ea45b9535223bc53ca645f5208833c29229e847b3f26a1cc55fc0"
  end

  resource "dateparser" do
    url "https://files.pythonhosted.org/packages/59/6a/9f06999c4f27e9192c5eb38bfffadc2e6752df8178e97e88b10b9eb4c682/dateparser-1.4.2.tar.gz"
    sha256 "bed2a3fd9bad8f2fb2d72b57748bada260b3a9349a264c22ffc23c3249d7049a"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
    sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
  end

  resource "deprecated" do
    url "https://files.pythonhosted.org/packages/49/85/12f0a49a7c4ffb70572b6c2ef13c90c88fd190debda93b23f026b25f9634/deprecated-1.3.1.tar.gz"
    sha256 "b1b50e0ff0c1fddaa5708a2c6b0a6588bb09b892825ab2b214ac9ea9d92a5223"
  end

  resource "deprecation" do
    url "https://files.pythonhosted.org/packages/5a/d3/8ae2869247df154b64c1884d7346d412fed0c49df84db635aab2d1c40e62/deprecation-2.1.0.tar.gz"
    sha256 "72b3bde64e5d778694b0cf68178aed03d15e15477116add3fb773e581f9518ff"
  end

  resource "dirtyjson" do
    url "https://files.pythonhosted.org/packages/db/04/d24f6e645ad82ba0ef092fa17d9ef7a21953781663648a01c9371d9e8e98/dirtyjson-1.0.8.tar.gz"
    sha256 "90ca4a18f3ff30ce849d100dcf4a003953c79d3a2348ef056f1d9c22231a25fd"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "django" do
    url "https://files.pythonhosted.org/packages/d5/d8/43e9d000519adceb189620b6869ff88031e046df91c2e9da72f8f6918399/django-5.2.17.tar.gz"
    sha256 "9d4d93be539a18ab80d058eb515900e10951e04c537c5a6b394fc49528d3251f"
  end

  resource "django-allauth" do
    url "https://files.pythonhosted.org/packages/3d/df/357187dfff18c7783e4911827a6c69437e290d7259a32a99c23fcd85997f/django_allauth-65.16.1.tar.gz"
    sha256 "4425ac3088541c4c54983e16e08f6e3eb9f438dc1b1009534fa51c8bb739ed31"
  end

  resource "django-auditlog" do
    url "https://files.pythonhosted.org/packages/70/e5/2beb2b256775c4fc041ed60cb44f5d77acb6cde307f01567dcf2756721a7/django_auditlog-3.4.1.tar.gz"
    sha256 "ad07b9db452d5fa8303822cccd78cd3fcb2c2863aeb6abe039ec45739b4d7e33"
  end

  resource "django-cachalot" do
    url "https://files.pythonhosted.org/packages/b6/6b/e9df6b94965f783f660a2c469f2b1fd2ffb15fb3d6953bcec9652030c8f8/django_cachalot-2.9.1.tar.gz"
    sha256 "7d3b12022abc811e344deac8830228e2d027ed8dcf762e1116dccde74d360512"
  end

  resource "django-compression-middleware" do
    url "https://files.pythonhosted.org/packages/fb/4d/da91ea4ee413802e30ff63a117022767062fdb6e3f090e73632d4fabe12f/django-compression-middleware-0.5.0.tar.gz"
    sha256 "0df50f12d774659abc8bbc88e4c794f2785a8f11f30b5bb267c314b85d941b73"
  end

  resource "django-cors-headers" do
    url "https://files.pythonhosted.org/packages/21/39/55822b15b7ec87410f34cd16ce04065ff390e50f9e29f31d6d116fc80456/django_cors_headers-4.9.0.tar.gz"
    sha256 "fe5d7cb59fdc2c8c646ce84b727ac2bca8912a247e6e68e1fb507372178e59e8"
  end

  resource "django-extensions" do
    url "https://files.pythonhosted.org/packages/6d/b3/ed0f54ed706ec0b54fd251cc0364a249c6cd6c6ec97f04dc34be5e929eac/django_extensions-4.1.tar.gz"
    sha256 "7b70a4d28e9b840f44694e3f7feb54f55d495f8b3fa6c5c0e5e12bcb2aa3cdeb"
  end

  resource "django-filter" do
    url "https://files.pythonhosted.org/packages/2c/e4/465d2699cd388c0005fb8d6ae6709f239917c6d8790ac35719676fffdcf3/django_filter-25.2.tar.gz"
    sha256 "760e984a931f4468d096f5541787efb8998c61217b73006163bf2f9523fe8f23"
  end

  resource "django-guardian" do
    url "https://files.pythonhosted.org/packages/5e/d9/8bdd4a82192aee2a600b48fa7206b285a8119a0154564f0880bd099b2b4b/django_guardian-3.3.4.tar.gz"
    sha256 "287c881d7076594166411dad9e58a5ac0e887899c4b07d2ee4e13aaccba6d8f6"
  end

  resource "django-multiselectfield" do
    url "https://files.pythonhosted.org/packages/04/9a/27060e8aa491ff2d286054df2e89df481a8dfe0e5e459fa36c0f48e3c10c/django_multiselectfield-1.0.1.tar.gz"
    sha256 "3f8b4fff3e07d4a91c8bb4b809bc35caeb22b41769b606f4c9edc53b8d72a667"
  end

  resource "django-rich" do
    url "https://files.pythonhosted.org/packages/a6/67/e307a5fef657e7992468f567b521534c52e01bdda5a1ae5b12de679a670f/django_rich-2.2.0.tar.gz"
    sha256 "ecec7842d040024ed8a225699388535e46b87277550c33f46193b52cece2f780"
  end

  resource "django-soft-delete" do
    url "https://files.pythonhosted.org/packages/aa/98/c7c52a85b070b1703774df817b6460a7714655302a2d503f6447544f1a29/django_soft_delete-1.0.23.tar.gz"
    sha256 "814659f0d19d4f2afc58b31ff73f88f0af66715ccef3b4fcd8f6b3a011d59b2a"
  end

  resource "django-treenode" do
    url "https://files.pythonhosted.org/packages/cb/2b/09f04b44b3583a911ae4f5d0e3360a23d529704c9e9115fce2520b7d4420/django_treenode-0.25.0.tar.gz"
    sha256 "d14d0eb3571c227ce11147210d62a8f87b568bbb30fa76a5be9b9e6d514157c3"
  end

  resource "djangorestframework" do
    url "https://files.pythonhosted.org/packages/79/bc/de04e3d4dc65e8b926700956ee70d4f084f2005603d21122d4d0683006fd/djangorestframework-3.18.0.tar.gz"
    sha256 "2323a5111837e0b784dcb8323abc78ecc54fa2a5af7aff2677cf50cdd849477f"
  end

  resource "drf-spectacular" do
    url "https://files.pythonhosted.org/packages/50/43/41d25039a6a53545420ebc98eb9f877ec9fe30c7bd03fefabcaf9b953af7/drf_spectacular-0.30.0.tar.gz"
    sha256 "53e79e7ba00e240441b63c32273754a5368e4c2ab44a19f2595277cc1cd559c9"
  end

  resource "drf-spectacular-sidecar" do
    url "https://files.pythonhosted.org/packages/7a/51/9e038d14bf51a0bd051e8bcb690287349c908fa7ba69021d9f3e5d5ac51f/drf_spectacular_sidecar-2026.7.1.tar.gz"
    sha256 "40113c4066c7bc3ef15a7ce1c40cda227a907a9986748024a813a9e0595eba25"
  end

  resource "drf-writable-nested" do
    url "https://files.pythonhosted.org/packages/e8/57/df87d92fbfc3f0f2ef1a49c47f2a83389a4a13b7acf62b8bf7b223627d82/drf_writable_nested-0.7.2-py3-none-any.whl"
    sha256 "4a3d2737c1cbfafa690e30236b169112e5b23cfe3d288f3992b0651a1b828c4d"
  end

  resource "fido2" do
    url "https://files.pythonhosted.org/packages/eb/cc/4529123364d41f342145f2fd775307eaed817cd22810895dea10e15a4d06/fido2-1.2.0.tar.gz"
    sha256 "e39f95920122d64283fda5e5581d95a206e704fa42846bfa4662f86aa0d3333b"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/0a/a0/50c2c0ce5e74d7721bbb1b19a26ebd339aac5878553a6e35308c2f31f935/filelock-3.32.5.tar.gz"
    sha256 "f6a6a28f743f9b95ce19db5abe0f376f75eb56517dff21e1a4751e2657d3e83d"
  end

  resource "filetype" do
    url "https://files.pythonhosted.org/packages/bb/29/745f7d30d47fe0f251d3ad3dc2978a23141917661998763bebb6da007eb1/filetype-1.2.0.tar.gz"
    sha256 "66b56cd6474bf41d8c54660347d37afcc3f7d1970648de365c102ef77548aadb"
  end

  resource "flower" do
    url "https://files.pythonhosted.org/packages/09/a1/357f1b5d8946deafdcfdd604f51baae9de10aafa2908d0b7322597155f92/flower-2.0.1.tar.gz"
    sha256 "5ab717b979530770c16afb48b50d2a98d23c3e9fe39851dcf6bc4d01845a02a0"
  end

  resource "fonttools" do
    url "https://files.pythonhosted.org/packages/d4/41/0f072a712dc74496e03710e462a18a4cfd8a258ad055a4e22d28b43a7abd/fonttools-4.64.0.tar.gz"
    sha256 "ecb2e59a7bc692fee64dda6010deb66222335693b30046f15cccf81233aa715f"
  end

  resource "fpdf2" do
    url "https://files.pythonhosted.org/packages/1e/bc/8fd4321aed40cadadddc8f311c65b6082346b252bca048f7b476d8f35d72/fpdf2-2.8.8.tar.gz"
    sha256 "9e94e155e85e8053329a9a1fce8b566fd7a7c5bb79e98a1a3952d379b947c5b9"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2d/f5/c831fac6cc817d26fd54c7eaccd04ef7e0288806943f7cc5bbf69f3ac1f0/frozenlist-1.8.0.tar.gz"
    sha256 "3ede829ed8d842f6cd48fc7081d7a41001a56f1f38603f9d49bf3020d59a31ad"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/00/78/f34251dadb8f3921264a1d9b8946f5e542014ee2614b285261b4e40e6775/fsspec-2026.7.0.tar.gz"
    sha256 "c803c40f4cf860b49dea58ee3e1c33cb9c790520e233537e1340049f89b82a88"
  end

  resource "gotenberg-client" do
    url "https://files.pythonhosted.org/packages/f5/34/8e3be3a6a1b654d2a3bfa3e5d201183aeff6d50c42199ac0b8ed912c01c5/gotenberg_client-0.14.0.tar.gz"
    sha256 "a853700c6b01c3372871264c4eb9ae3375addafbcbbfd3341e411f4217a8088c"
  end

  resource "greenlet" do
    url "https://files.pythonhosted.org/packages/0b/d8/7cc97c142388aef03f622e001c572c4f84e9252a439549d483f555771970/greenlet-3.5.5.tar.gz"
    sha256 "adb4bae02e91a8e863e48b177e4014bdcac8a6b5e047ea1df687a61534b85e6c"
  end

  resource "griffe" do
    url "https://files.pythonhosted.org/packages/df/a0/927cf9416f527f623f4ccd9220337fca0cd85303b7e82adeab1e53669cd3/griffe-2.2.0.tar.gz"
    sha256 "9c0dd9a7feda9e169d783507d777c6fb2f2fc2919b139747a5b4f5357517a611"
  end

  resource "griffecli" do
    url "https://files.pythonhosted.org/packages/de/75/3cf2fb1ae21fb55a3b917b45d24426a620ee916f4bdbd03f350c69d3d892/griffecli-2.2.0.tar.gz"
    sha256 "b9e763131218eb19887ed52de20fe944252d811bfb4a3e339874908a588f0044"
  end

  resource "griffelib" do
    url "https://files.pythonhosted.org/packages/f0/b4/a767e91c606deefc447a96eaf59edd77397960b1d677dffd833ee8449831/griffelib-2.2.0.tar.gz"
    sha256 "e1bc36fe9cd21d4b6b659b456346755e4cfdc5676c0a5214083126ee12612b3c"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "h2" do
    url "https://files.pythonhosted.org/packages/e7/85/7c366e69d84c17bb778fe41419e1fbcce3033d5b7ce29bbffff0a98b859f/h2-4.4.1.tar.gz"
    sha256 "4e866ffb1a869ae14dd9b5e6beb5c24a13da0495ad72b65925ded182521c1516"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/1b/ab/522a2ab67f27971a9d48ca666d4fca85ef7d5282d142e31fd087e27b1bbe/hf_xet-1.6.0.tar.gz"
    sha256 "2e58454a340b3556dfa4972d5451aff4fba8dd42a236600ba1a1d2b1514f0fef"
  end

  resource "hiredis" do
    url "https://files.pythonhosted.org/packages/52/1e/4729c6fcecb653da6e4877302ed654c24ebb297fe796deee44139bd76179/hiredis-3.4.1.tar.gz"
    sha256 "2bbb55435506e481d270df8d0b29dd94acb85d11d71df4b8efce23849a4d0bb7"
  end

  resource "hpack" do
    url "https://files.pythonhosted.org/packages/26/5b/fcabf6028144a8723726318b07a32c2f3314acdff6265743cf08a344b18e/hpack-4.2.0.tar.gz"
    sha256 "0895cfa3b5531fc65fe439c05eb65144f123bf7a394fcaa56aa423548d8e45c0"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "httpx-oauth" do
    url "https://files.pythonhosted.org/packages/7f/91/8b9f58cbf6e8914577183731233e66d3e586f1397b23190f46a929206b96/httpx_oauth-0.17.0.tar.gz"
    sha256 "d279997ea80e7fc6f713acc8ed0fcc07ec319bae939753a2579d1fb7a753167b"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/64/35/42316e8f6908b6d21bc8df017cc6efba94fb5edbf99b64e28dd142325e20/huggingface_hub-1.29.0.tar.gz"
    sha256 "6ebb385a581435325cf6d5c5b233d5d4bc91175834d99fd65dae14379b36e9ad"
  end

  resource "humanize" do
    url "https://files.pythonhosted.org/packages/0a/ea/13a1ef3c12d12662905801495283530251918b70d62d368f1d2e0272c70d/humanize-4.16.0.tar.gz"
    sha256 "7dc2244a2f84a4bfb1d36c37bac80cd78e35cdc5c119206d87b018e1445f3a3f"
  end

  resource "hyperframe" do
    url "https://files.pythonhosted.org/packages/02/e7/94f8232d4a74cc99514c13a9f995811485a6903d48e5d952771ef6322e30/hyperframe-6.1.0.tar.gz"
    sha256 "f630908a00854a7adeabd6382b43923a4c4cd4b821fcb527e6ab9e15382a3b08"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/5f/f7/abb373e5757eaec4b922b92f97ec8d6d7e057cf06778247604fbc4e7c3f3/idna-3.19.tar.gz"
    sha256 "5e0811a4383b21dc5838069f801c4fb62113b7447663d2530d2bd6e77b49bf15"
  end

  resource "ijson" do
    url "https://files.pythonhosted.org/packages/3a/06/b31f040a8764336a11152e474a7abcb3782fedb0d1cdf78f442b82878c56/ijson-3.5.1.tar.gz"
    sha256 "af40bd1a85f55db0b8b30715c858761306bd92d5590148636f75c3309e6e76bd"
  end

  resource "imap-tools" do
    url "https://files.pythonhosted.org/packages/41/66/d52b6c7740aa81678404a9039668ab2b4887f46055290f232229a2d5b612/imap_tools-1.14.0.tar.gz"
    sha256 "d730a35763c09ca02be45b93c8d5d638d9f098876c95841c7ce4d337ede403da"
  end

  resource "img2pdf" do
    url "https://files.pythonhosted.org/packages/8e/97/ca44c467131b93fda82d2a2f21b738c8bcf63b5259e3b8250e928b8dd52a/img2pdf-0.6.3.tar.gz"
    sha256 "219518020f5bd242bdc46493941ea3f756f664c2e86f2454721e74353f58cd95"
  end

  resource "inflection" do
    url "https://files.pythonhosted.org/packages/e1/7e/691d061b7329bc8d54edbf0ec22fbfb2afe61facb681f9aaa9bff7a27d04/inflection-0.5.1.tar.gz"
    sha256 "1a29730d366e996aaacffb2f1f1cb9593dc38e2ddd30c91250c6dde09ea9b417"
  end

  resource "iniconfig" do
    url "https://files.pythonhosted.org/packages/72/34/14ca021ce8e5dfedc35312d08ba8bf51fdd999c576889fc2c24cb97f4f10/iniconfig-2.3.0.tar.gz"
    sha256 "c76315c77db068650d49c5b56314774a7804df16fee4402c1f19d6d15d8c4730"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/54/4d/e940025e2ce31a8ce1202635910747e5a87cc3a6a6bb2d00973375014749/isodate-0.7.2.tar.gz"
    sha256 "4cd1aa0f43ca76f4a6c6c0292a85f40b35ec2e43e315b59f06e6d32171a953e6"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/1d/1f/10936e16d8860c70698a1aa939a46aa0224813b782bce4e000e637da0b2d/jiter-0.16.0.tar.gz"
    sha256 "7b24c3492c5f4f84a37946ad9cf504910cf6a782d6a4e0689b6673c5894b4a1c"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "kombu" do
    url "https://files.pythonhosted.org/packages/b6/a5/607e533ed6c83ae1a696969b8e1c137dfebd5759a2e9682e26ff1b97740b/kombu-5.6.2.tar.gz"
    sha256 "8060497058066c6f5aed7c26d7cd0d3b574990b09de842a8c5aaed0b92cc5a55"
  end

  resource "langdetect" do
    url "https://files.pythonhosted.org/packages/0e/72/a3add0e4eec4eb9e2569554f7c70f4a3c27712f40e3284d483e88094cc0e/langdetect-1.0.9.tar.gz"
    sha256 "cbc1fef89f8d062739774bd51eda3da3274006b3661d199c2655f6b3f6d605a0"
  end

  resource "llama-index-core" do
    url "https://files.pythonhosted.org/packages/d9/7a/e54d5ea405b51c1b7e1ed078036f698bcbeefc82128d5c48b7cb6d997ce6/llama_index_core-0.14.24.tar.gz"
    sha256 "4b2eb3af98eecf3579707ef018be0346bd851be2c7660102d88fab0457b95b61"
  end

  resource "llama-index-embeddings-huggingface" do
    url "https://files.pythonhosted.org/packages/53/ab/a027dbe85998649526b06439fe9ce0591928a1f9593de3f59ea835a06f2e/llama_index_embeddings_huggingface-0.8.0.tar.gz"
    sha256 "02f34df13e3b83e9169fcfdf624b6fbe906fce75b7448cdf69800babc281a9a6"
  end

  resource "llama-index-embeddings-ollama" do
    url "https://files.pythonhosted.org/packages/37/be/aa06215b51538a9e95da63bb3855591a547eae16c15f45f3905f98e03dbe/llama_index_embeddings_ollama-0.10.0.tar.gz"
    sha256 "fc26cfe8d9d015f76b61558d4c9a1c854535ea0140dd87f169de760b40af3cea"
  end

  resource "llama-index-embeddings-openai" do
    url "https://files.pythonhosted.org/packages/06/52/eb56a4887501651fb17400f7f571c1878109ff698efbe0bbac9165a5603d/llama_index_embeddings_openai-0.6.0.tar.gz"
    sha256 "eb3e6606be81cb89125073e23c97c0a6119dabb4827adbd14697c2029ad73f29"
  end

  resource "llama-index-embeddings-openai-like" do
    url "https://files.pythonhosted.org/packages/ca/09/671814fa7f52a462702e526689afc07a36e7d7242830ddf910faba480ded/llama_index_embeddings_openai_like-0.4.0.tar.gz"
    sha256 "ec151f73eacf17476eda96481eb95815de0ec7c559eb7fe745d3589cfa3846f2"
  end

  resource "llama-index-instrumentation" do
    url "https://files.pythonhosted.org/packages/70/ac/ffc116bac024cb0a54b4d28ca9b421e9a08f408c1fcc0039a36de2c0c97b/llama_index_instrumentation-0.6.0.tar.gz"
    sha256 "b185c4e28a7f32899c27649cc2e2d7d54267fa2ff0cd43cbe2b5212bae98fe3a"
  end

  resource "llama-index-llms-ollama" do
    url "https://files.pythonhosted.org/packages/11/99/b82667831e75aca2f49488b2904520180c19cba3c24fc55ee4b177d77888/llama_index_llms_ollama-0.11.0.tar.gz"
    sha256 "e6b8cac200a9ff67caea531fece0a6272a89e3506b2b9648ec709acffe4a7980"
  end

  resource "llama-index-llms-openai" do
    url "https://files.pythonhosted.org/packages/74/6e/1ef83a852296c55fe8c529b4476073eccaff150d57aceb3d6319a87dcc89/llama_index_llms_openai-0.7.10.tar.gz"
    sha256 "aa8dabf08ea0b9740fc9dae9677f05049254be5e929794a886692eaf26973def"
  end

  resource "llama-index-llms-openai-like" do
    url "https://files.pythonhosted.org/packages/0b/83/9695e5414b458e82b8baafdfec8f94dc1566cac712a171bcab4a03ca3a30/llama_index_llms_openai_like-0.8.0.tar.gz"
    sha256 "459f115ca343c96252b9d123986056193a7d088f64f73c5336ce381e02c9d6d2"
  end

  resource "llama-index-workflows" do
    url "https://files.pythonhosted.org/packages/74/f8/cb9968d2453b16dc8951b8542ea827a59b937ecb0aa1a06d3ca418a311f4/llama_index_workflows-2.23.3.tar.gz"
    sha256 "fba140ea4d4aa7e7ca58f3ddc2526b92bfb31bfaf45ab2b4345401ae527061b4"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/23/ad/28ecd7cb894d172f3c9c80a075eeeb2017ac62e3632cee05a5f9493547eb/lxml-6.1.3.tar.gz"
    sha256 "45222d94ddd511536f3b2f7d9deae3b2339b4ce0f075f1ca25703b07cad9dd21"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "marshmallow" do
    url "https://files.pythonhosted.org/packages/55/79/de6c16cc902f4fc372236926b0ce2ab7845268dcc30fb2fbb7f71b418631/marshmallow-3.26.2.tar.gz"
    sha256 "bbe2adb5a03e6e3571b573f42527c6fe926e17467833660bebd11593ab8dfd57"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
    sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/6d/44/ea2100ec54d30c46ee9dba10a3bfb79b655e96c6df237238a3234c75869b/msgpack-1.2.2.tar.gz"
    sha256 "9eb0b0e602064527a045ea28c4f174ed69383587e29cebe28947e3b84106eb2a"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/1a/c2/c2d94cbe6ac1753f3fc980da97b3d930efe1da3af3c9f5125354436c073d/multidict-6.7.1.tar.gz"
    sha256 "ec6652a1bee61c53a3e5776b6049172c53b6aaba34f18c9ad04f82712bac623d"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/a2/6e/371856a3fb9d31ca8dac321cda606860fa4548858c0cc45d9d1d4ca2628b/mypy_extensions-1.1.0.tar.gz"
    sha256 "52e68efc3284861e772bbcd66823fde5ae21fd2fdb51c62a211403730b916558"
  end

  resource "narwhals" do
    url "https://files.pythonhosted.org/packages/6f/7b/6248dada39781db1ab3ebf08943080df0796098515a87f6f8696d14ec744/narwhals-2.25.0.tar.gz"
    sha256 "62c036c810662bf7820b7737077176313bc59350eeeefb808510f388c743e4b2"
  end

  resource "nest-asyncio" do
    url "https://files.pythonhosted.org/packages/83/f8/51569ac65d696c8ecbee95938f89d4abf00f47d58d48f6fbabfe8f0baefe/nest_asyncio-1.6.0.tar.gz"
    sha256 "6f172d5449aca15afd6c646851f4e31e02c598d553a667e38cafa997cfec55fe"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/6a/51/63fe664f3908c97be9d2e4f1158eb633317598cfa6e1fc14af5383f17512/networkx-3.6.1.tar.gz"
    sha256 "26b7c357accc0c8cde558ad486283728b65b6a95d85ee1cd66bafab4c8168509"
  end

  resource "nltk" do
    url "https://files.pythonhosted.org/packages/e0/e6/fe51d2bb1a3b446f59c5c8165999a9fee208bc346af90a7cbf7657bc0d75/nltk-3.10.3.tar.gz"
    sha256 "bb9327a461c3811c2fa4900e03840401f2126adfb30c0072827c433bd2444ea4"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/0b/5f/19930f824ffeb0ad4372da4812c50edbd1434f678c90c2733e1188edfc63/oauthlib-3.3.1.tar.gz"
    sha256 "0f0f8aa759826a193cf66c12ea1af1637f87b9b4622d46e866952bb022e538c9"
  end

  resource "ocrmypdf" do
    url "https://files.pythonhosted.org/packages/15/ac/30171791db306c7b1c705957a0b9bed9df443b9465533dfc1945a654805b/ocrmypdf-17.7.1.tar.gz"
    sha256 "d61184b84e3001ebe7c5acb265041bd8591f924b8616bbefc746a5bdafab3eca"
  end

  resource "ollama" do
    url "https://files.pythonhosted.org/packages/fc/72/5f12423b6b39ca8430fbe56f77fcf4ef60f63067c7c4a2e30e200ed9ec16/ollama-0.6.2.tar.gz"
    sha256 "936d55daa684f474364c098611c933626f8d6c7d67065c5b7ae0c477b508b07f"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/50/9a/8c75e8c8a5b407a0586faeb2afac91674ff955c191ecc1d6d3b6669f6788/openai-2.54.0.tar.gz"
    sha256 "e3e6f8bc1ba30ddf381ace1a14340eed381cb984a1a59bd0f34b5be3b5d49cfa"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "pathvalidate" do
    url "https://files.pythonhosted.org/packages/fa/2a/52a8da6fe965dea6192eb716b357558e103aea0a1e9a8352ad575a8406ca/pathvalidate-3.3.1.tar.gz"
    sha256 "b18c07212bfead624345bb8e1d6141cdcf15a39736994ea0b94035ad2b1ba177"
  end

  resource "pdf2image" do
    url "https://files.pythonhosted.org/packages/00/d8/b280f01045555dc257b8153c00dee3bc75830f91a744cd5f84ef3a0a64b1/pdf2image-1.17.0.tar.gz"
    sha256 "eaa959bc116b420dd7ec415fcae49b98100dda3dd18cd2fdfa86d09f112f6d57"
  end

  resource "pdfminer-six" do
    url "https://files.pythonhosted.org/packages/34/a4/5cec1112009f0439a5ca6afa8ace321f0ab2f48da3255b7a1c8953014670/pdfminer_six-20260107.tar.gz"
    sha256 "96bfd431e3577a55a0efd25676968ca4ce8fd5b53f14565f85716ff363889602"
  end

  resource "pi-heif" do
    url "https://files.pythonhosted.org/packages/6a/a2/70168b601b41bdf5726dfc8dc110eb4052a2e851fed9c9bdae95910e401d/pi_heif-1.4.0.tar.gz"
    sha256 "e1199d9d41d9ecc877cf3ae7322ff099f6404574f2e62da47590cd4ecb9ec554"
  end

  resource "pikepdf" do
    url "https://files.pythonhosted.org/packages/1e/d4/f4383bb3ac90cb322cb340cd4253bfc19f80819a97d61a49077ab3a0581e/pikepdf-10.12.0.tar.gz"
    sha256 "cbc790243a333a2c87bb4c1a69e3d7036b4a7f43c7fafc8ec7cee06985b48ae9"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/69/b7/802a56eca9f2fac455b8bab5375a2647b0f0e14a2cd63ef077de3c4a7658/platformdirs-4.11.7.tar.gz"
    sha256 "4f41487eeeeeb07f3a6625e61d9bc0ae6809f92d3386dbd74392fbb76108104d"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/f9/e2/3e91f31a7d2b083fe6ef3fa267035b518369d9511ffab804f839851d2779/pluggy-1.6.0.tar.gz"
    sha256 "7dcc130b76258d33b90f61b658791dede3486c3e6bfb003ee5c9bfb396dd22f3"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/0d/8e/27672cd2dde9d2345ead0352146a401be4ec0af132be86ca7a2db24afb09/portalocker-4.3.0.tar.gz"
    sha256 "69bf8e46769d66eb0a23219b9550253d2c3b5f03400202a2333784c1e6395e32"
  end

  resource "prometheus-client" do
    url "https://files.pythonhosted.org/packages/52/73/f1334c29c2af4cd9dba6c7817e61b611bd0215e2eb5565c6064a4de18802/prometheus_client-0.26.0.tar.gz"
    sha256 "04a91bcf94e2cf74a44a1a874d651a2e853ed354b6e822f3b7487751465d5c2b"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/7d/ea/39b988c938f75cb75d7045b5c69f8bfed47ee2152c8837fb403de29d6fb8/prompt_toolkit-3.0.53.tar.gz"
    sha256 "9ec8a0ad96d5c56148b3f914aa79c1564c3fde5d2e6b876e7bc327e353cf8fa6"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/ec/44/c87281c333769159c50594f22610f77398a47ccbfbbf23074e744e86f87c/propcache-0.5.2.tar.gz"
    sha256 "01c4fc7480cd0598bb4b57022df55b9ca296da7fc5a8760bd8451a7e63a7d427"
  end

  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/72/73/8fb739d0f6bba247b9b93c9840c402a4f88545be5f1d4b02b23366371c00/psycopg-3.3.5.tar.gz"
    sha256 "d0a3d9ccf5788af054cbd745278cb02401b5c312aeaafbf2c6144460aec47da4"
  end

  resource "psycopg-pool" do
    url "https://files.pythonhosted.org/packages/90/82/7a23d26039827ecd4ebe93905651029ddd307c5182ad59296dfb6f67b528/psycopg_pool-3.3.1.tar.gz"
    sha256 "b10b10b7a175d5cc1592147dc5b7eec8a9e0834eb3ed2c4a92c858e2f51eb63c"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/3b/81/58d0ac84e1ef3a3843791d6954d94c0b33d526c75eeb1efbce9d0a4c4077/pyjwt-2.13.0.tar.gz"
    sha256 "41571c89ca91598c79e8ef18a2d07367d4810fbbd6f637794879baf1b7703423"
  end

  resource "pypdfium2" do
    url "https://files.pythonhosted.org/packages/ec/78/a52cb80611339ec95f35c7a10d7bfe7a6f97f3b50a35a9f94283d062512e/pypdfium2-5.13.0.tar.gz"
    sha256 "7ca2d8e31bd8d0d40c496416b7d8bea423388669ffd494929f50e8c3a82326b8"
  end

  resource "pytest" do
    url "https://files.pythonhosted.org/packages/e4/47/b9efed96c114afcfa3c9d3fe98a76a1d14c74a9e266d397cf6eb64be5e01/pytest-9.1.1.tar.gz"
    sha256 "1088fbde8f2b49d95a549a195707afa7a76a3ce9bcadc26b6d71f0ffda5fe313"
  end

  resource "pytest-asyncio" do
    url "https://files.pythonhosted.org/packages/43/7c/d36d04db312ecf4298932ef77e6e4a9e8ad017906e24e34f0b0c361a2473/pytest_asyncio-1.4.0.tar.gz"
    sha256 "c6c0d2259945122819f171a32ecea2c349ead889ee28176caaf492143424be42"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/6a/53/ed9d74092561d4b01a2ef1349d52cdbc135e526c245f366b089cfca6de49/python_dotenv-1.2.3.tar.gz"
    sha256 "a20a594dabeaa385725aa239d5244871c143ecb356add8a20fcf23773a6c3a35"
  end

  resource "python-gnupg" do
    url "https://files.pythonhosted.org/packages/98/2c/6cd2c7cff4bdbb434be5429ef6b8e96ee6b50155551361f30a1bb2ea3c1d/python_gnupg-0.5.6.tar.gz"
    sha256 "5743e96212d38923fc19083812dc127907e44dbd3bcf0db4d657e291d3c21eac"
  end

  resource "python-ipware" do
    url "https://files.pythonhosted.org/packages/9e/60/da4426c3e9aee56f08b24091a9e85a0414260f928f97afd0013dfbd0332f/python_ipware-3.0.0.tar.gz"
    sha256 "9117b1c4dddcb5d5ca49e6a9617de2fc66aec2ef35394563ac4eecabdf58c062"
  end

  resource "python-magic" do
    url "https://files.pythonhosted.org/packages/da/db/0b3e28ac047452d079d375ec6798bf76a036a08182dbb39ed38116a49130/python-magic-0.4.27.tar.gz"
    sha256 "c1ba14b08e4a5f5c31a302b7721239695b2f0f058d125bd5ce1ee36b9d9d3c3b"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/fb/48/fb042503b6ca6cd271261dc559fd6432f7d8c713153e9ec5c591af4dfc1c/pytz-2026.3.post1.tar.gz"
    sha256 "2211d3fcf9a797d3405cac96ac7f61d80e6a644f72a3309607282fe8a2010c5d"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "qrcode" do
    url "https://files.pythonhosted.org/packages/8f/b2/7fc2931bfae0af02d5f53b174e9cf701adbb35f39d69c2af63d4a39f81a9/qrcode-8.2.tar.gz"
    sha256 "35c3f2a4172b33136ab9f6b3ef1c00260dd2f66f858f24d88418a015f446506c"
  end

  resource "rapidfuzz" do
    url "https://files.pythonhosted.org/packages/18/97/226c43b7b5d957bc3840ed52ea99eed261f99834c4619be7a4742cbaeafa/rapidfuzz-3.14.6.tar.gz"
    sha256 "e13a8160d017b499ec7a2fa9d0ce1ae2e7377080815785819f966fb235d4eb60"
  end

  resource "redis" do
    url "https://files.pythonhosted.org/packages/47/da/d283a37303a995cd36f8b92db85135153dc4f7a8e4441aa827721b442cfb/redis-5.2.1.tar.gz"
    sha256 "16f2e22dff21d5125e8481515e386711a34cbec50f0e44413dd7d9c060a54e0f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/19/c1/6b30b775c7bcc6cf6506a4d4741c2123e8d99cd50f3fe8cbd731f5fef526/regex-2026.9.3.tar.gz"
    sha256 "aabd43208e335f4c3f0b56de3464b066dd425983a58f6eeb5738bcd7465403db"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/aa/2a/9618a122aeb2a169a28b03889a2995fe297588964333d4a7d67bdf46e147/rpds_py-2026.6.3.tar.gz"
    sha256 "1cebd1337c242e4ec2293e541f712b2da849b29f48f0c293684b71c0632625d4"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/45/06/f955dbbb1859e3bd23c8ac6141af5106e7ad5fedec4a3a6e3d60f94b7001/safetensors-0.8.0.tar.gz"
    sha256 "fabaf3e0f18a6618d9b36560682562157f77c2b71fcffc7b432be2baed9d753d"
  end

  resource "sentence-transformers" do
    url "https://files.pythonhosted.org/packages/d9/ef/87681678d0aa91a1e77f0ffdd2e5d900aaf358aac644dd14bead8d95ec4c/sentence_transformers-6.0.1.tar.gz"
    sha256 "1c3b8d9403f87ad0c879638554f36cc85744f38a6a70d150fd7e964ca0e9935b"
  end

  resource "setproctitle" do
    url "https://files.pythonhosted.org/packages/8d/48/49393a96a2eef1ab418b17475fb92b8fcfad83d099e678751b05472e69de/setproctitle-1.3.7.tar.gz"
    sha256 "bc2bc917691c1537d5b9bca1468437176809c7e11e5694ca79a9ca12345dcb9e"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "sqlalchemy" do
    url "https://files.pythonhosted.org/packages/3b/21/77b4c147963073040dc3c3a5cb7a8c3001a1893c0209432cb77f9df836aa/sqlalchemy-2.0.52.tar.gz"
    sha256 "5e2d46356ac2ccb7d268ab6c2319ac6a2b42f1b8d5fd8bd3d46855cd82abee97"
  end

  resource "sqlparse" do
    url "https://files.pythonhosted.org/packages/5f/d3/3f06a1006f2261d1342aefb3c71eed02f5d4ca5bdbecd86ebc12ad38306e/sqlparse-0.6.0.tar.gz"
    sha256 "113c35c75365ab9cc9c7231d68c6428fb11c085fc8e9eb1ad659b7ddbf6cd2b9"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/83/d3/803453b36afefb7c2bb238361cd4ae6125a569b4db67cd9e79846ba2d68c/sympy-1.14.0.tar.gz"
    sha256 "d3d3fe8df1e5a0b42f0e7bdf50541697dbe7d23746e894990c030e2b05e72517"
  end

  resource "tantivy" do
    url "https://files.pythonhosted.org/packages/57/74/ec8c3f7bb3599af86c19f1a774c37e36a6e7524d3563f3aeb99220981f6f/tantivy-0.26.0.tar.gz"
    sha256 "7c9507fcc62bac4ef1d40b1ed37ff7fa07e44b5043b30288f63bcf4fdc62644a"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/47/c6/ee486fd809e357697ee8a44d3d69222b344920433d3b6666ccd9b374630c/tenacity-9.1.4.tar.gz"
    sha256 "adb31d4c263f2bd041081ab33b498309a57c77f9acf2db65aadf0898179cf93a"
  end

  resource "tika-client" do
    url "https://files.pythonhosted.org/packages/4d/d9/01f2049240dacf67c9be61d9c59e72b6827a862e8fd87e77e458e0a3b797/tika_client-0.11.0.tar.gz"
    sha256 "c741caaca08bbd715a8db3fe6f0430a54d075fef3d59a441e8b8d810f58de4f0"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/66/62/167a842aa0429d45f5e797354fd4343a96f6043d67d0513c675c7b8d36e6/tiktoken-0.14.0.tar.gz"
    sha256 "231dec90efcdccf1b565a1416107736f1e09b1a08fe736ef9d6363e626d03874"
  end

  resource "tinytag" do
    url "https://files.pythonhosted.org/packages/77/1d/ba5d28e50e582e3f0661ec9be182a7532595aea0cd8b61f629c69cce69bf/tinytag-2.3.1.tar.gz"
    sha256 "537869e67de2dbc8b84d96b5ffcccac6ed1bc9f4500ee623f36b198d3ac3b23c"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/c1/60/21f715d9faba5f5407ff759472ade058ec4a507ad62bcea47cb847239a73/tokenizers-0.23.1.tar.gz"
    sha256 "1feeeadf865a7915adc25445dea30e9933e593c31bb96c277cee36de227c8bfa"
  end

  resource "tornado" do
    url "https://files.pythonhosted.org/packages/10/d3/343e5bb989d6515b1646cf3d40135d73f3d5e45339bded401b56cdac24dd/tornado-6.5.8.tar.gz"
    sha256 "9452e1b208a8bd771e2cb1f2ff564985b9b214bdebbe622793e1799e0a6bd23f"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/21/3b/6c24bec5be5e743ffd99576daa5cc077722fc7d5bbc00bd133fa0c698dc6/tqdm-4.70.0.tar.gz"
    sha256 "55b0b0dbd97462d06ebee91e4dac24ed4d4702be82b24f07e6c1d27e08cea220"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/ad/2e/ba418680ab901dae269360bb8642485eae04f1af91ee2ebb8bd6f3607305/transformers-5.16.1.tar.gz"
    sha256 "17b0eac726ddc55e84ac58946063e0c6d37fd000c456b581f050ea0f4e822869"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/16/f7/57713ba479fd405eb76de31404b2c744c289e336b2d999511ebf51e496f7/typer-0.27.2.tar.gz"
    sha256 "269b7eb9d3c202ca84b4bc9618cb04ebb43d3d4d1e567e4c768607232c05f945"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "typing-inspect" do
    url "https://files.pythonhosted.org/packages/dc/74/1789779d91f1961fa9438e9a8710cdae6bd138c80d7303996933d117264a/typing_inspect-0.9.0.tar.gz"
    sha256 "b23fc42ff6f6ef6954e4852c1fb512cdd18dbea03134f91f856a95ccc9461f78"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/92/ff/5a28bdfd8c3ebec42564ac7d0e54ca3db65044a9314a97f9564fa7a1e926/tzdata-2026.3.tar.gz"
    sha256 "4a1518b8993086a7982523e071643f3c0e5f213e75b21318e78bcabfff9d1415"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/81/5b/879b2f932adfa7a053c360d50bc896c977fa6426109185f7c12ebdd0cb9d/tzlocal-5.4.4.tar.gz"
    sha256 "8dbb8660838688a7b6ba4fed31d18dedf842afb4d47ca050d6d891c2c15f3be4"
  end

  resource "uharfbuzz" do
    url "https://files.pythonhosted.org/packages/60/77/48457fb0c51f6f8c1e3082b126322e075d60fea60ee0df2b18cc050d9874/uharfbuzz-0.56.1.tar.gz"
    sha256 "a0a6928ed66b166a931ebe5df9ac551b9c42983513030233dcd95b41fa827f97"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/98/60/f174043244c5306c9988380d2cb10009f91563fc4b31293d27e17201af56/uritemplate-4.2.0.tar.gz"
    sha256 "480c2ed180878955863323eea31b0ede668795de182617fef9c6ca09e6ec9d0e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  resource "vine" do
    url "https://files.pythonhosted.org/packages/bd/e4/d07b5f29d283596b9727dd5275ccbceb63c44a1a82aa9e4bfd20426762ac/vine-5.1.0.tar.gz"
    sha256 "8b62e981d35c41049211cf62a0a1242d8c1ee9bd15bb196ce38aefd6799e61e0"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/cd/41/5e1a4bb12aac5f1493fa1bdc11154eca3b258ca4eba65d39c473fe19d8e9/watchfiles-1.2.0.tar.gz"
    sha256 "c995fba777f1ea992f090f9236e9284cf7a5d1a0130dd5a3d82c598cacd76838"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/36/57/ed58088fafdf4c55a0ad6bde846502567645424d7ebf325230b9237f4085/wcwidth-0.8.3.tar.gz"
    sha256 "d128512515fbf4612e0ff21fd6380399210318b7b54a9af59dff8454cf9730eb"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/d5/a0/8fd707bcb776a7be556bad06a2ea5fb9bd519df78ef8e26f70ccf0f38bff/webencodings-0.6.1.tar.gz"
    sha256 "565f9ad031c702dae404e27a099e3e09186a3ab1b9520f06d215502b651fd910"
  end

  resource "whitenoise" do
    url "https://files.pythonhosted.org/packages/cb/2a/55b3f3a4ec326cd077c1c3defeee656b9298372a69229134d930151acd01/whitenoise-6.12.0.tar.gz"
    sha256 "f723ebb76a112e98816ff80fcea0a6c9b8ecde835f8ddda25df7a30a3c2db6ad"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/65/ba/8dc25478ed234dacc7d83c671634f347d0bdfb65bf0502f41879cf2f15a9/wrapt-2.4.0.tar.gz"
    sha256 "7082fc1f94b020ac275870c4af71b09cff22876fe6e9c4c0ad01ea21d217b288"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/31/33/ebe9e3d1f86c7a0b51094c0a146392045ca1631d2664889539dec8088a33/yarl-1.24.5.tar.gz"
    sha256 "e81b83143bee16329c23db3c1b2d82b29892fcbcb849186d2f6e98a5abe9a57f"
  end

  resource "zstandard" do
    url "https://files.pythonhosted.org/packages/fd/aa/3e0508d5a5dd96529cdc5a97011299056e14c6505b678fd58938792794b1/zstandard-0.25.0.tar.gz"
    sha256 "7713e1179d162cf5c7906da876ec2ccb9c3a9dcbdffef0cc7f70c3667a205f0b"
  end

  resource "zxing-cpp" do
    url "https://files.pythonhosted.org/packages/b9/30/ad0e0352c593712ebb47143571ff11b130812e2852d7540e7c80cdf23340/zxing_cpp-3.1.1.tar.gz"
    sha256 "1051a521b21a9fe206702ad4186aeb195154e3e1badcd99576d030723f36382b"
  end

  def install
    # hf-xet and tokenizers have source resources but need pre-built wheels
    # (Rust packages whose source builds fail in pip's build isolation).
    # sqlite-vec has no source distribution on PyPI at all.
    # torch is provided by Homebrew's pytorch formula.
    venv = virtualenv_install_with_resources(without: %w[hf-xet tokenizers])
    system venv.root/"bin/python", "-m", "pip", "install", "--no-deps",
           "hf-xet", "sqlite-vec", "tokenizers"
    python_executable = venv.root/"bin/python"
    manage_py_script = venv.site_packages/"manage.py"
    celery_executable = venv.root/"bin/celery"

    # download NLTK data
    system python_executable,
       "-W", "ignore::RuntimeWarning",
       "-m", "nltk.downloader",
       "-d", libexec/"nltk_data",
       "snowball_data", "stopwords", "punkt_tab"

    # install pre-built static files (frontend, admin, DRF, etc.)
    static_dir = libexec/"static"
    static_dir.install Dir["static/*"]

    # templates
    (venv.site_packages/"templates").install Dir["src/documents/templates/*"]

    # prompt templates for paperless_ai (setuptools only packages *.py,
    # so the .j2 files are missing and /ai_suggestions/ fails with
    # TemplateNotFound)
    (venv.site_packages/"paperless_ai/prompts").install Dir["src/paperless_ai/prompts/*.j2"]

    # compiled backend translations (LOCALE_PATHS = site-packages/locale)
    (venv.site_packages/"locale").install Dir["src/locale/*/LC_MESSAGES/*.mo"]
    inreplace venv.site_packages/"paperless/settings/__init__.py" do |s|
      s.sub! '"DIRS": []', '"DIRS": [os.path.join(BASE_DIR, \'templates\')]'
      # Apply thread-safety shim for macOS/spawn to fix _strptime and optparse race conditions
      s.sub! "import datetime", <<~PYTHON
        import datetime
        import optparse

        try:
            datetime.datetime.strptime("20210101", "%Y%m%d")
        except Exception:
            pass
      PYTHON
    end

    # Set OMP_NUM_THREADS to 1 on macOS because of
    #  https://github.com/NixOS/nixpkgs/issues/240591
    #  https://github.com/NixOS/nixpkgs/pull/299008
    rm buildpath/"paperless.conf"
    (buildpath/"paperless.conf").write <<~SH
      PAPERLESS_CONFIGURATION_PATH="#{etc}/paperless-ngx/paperless.conf"
      PAPERLESS_CONSUMPTION_DIR="#{var}/paperless-ngx/consume"
      PAPERLESS_DATA_DIR="#{var}/paperless-ngx/data"
      PAPERLESS_MEDIA_ROOT="#{var}/paperless-ngx/media"
      PAPERLESS_NLTK_DIR="#{opt_libexec}/nltk_data"
      PAPERLESS_STATICDIR="#{opt_libexec}/static"
      GRANIAN_WORKERS_KILL_TIMEOUT="60"
      #{"OMP_NUM_THREADS=1" if OS.mac?}
    SH
    (etc/"paperless-ngx").install "paperless.conf"

    s6_services_dir = libexec/"s6_services"
    s6_services_dir.mkpath

    conf_path = etc/"paperless-ngx/paperless.conf"

    # Each service gets a run script that sources the config, then execs its command.
    # paperless-worker uses --pool threads to prevent a macOS fork crash:
    #   https://bugs.python.org/issue37677
    #   https://github.com/celery/celery/pull/9810
    services = {
      "paperless-webserver" => <<~EOS,
        echo "Running database migrations..."
        "#{python_executable}" "#{manage_py_script}" migrate --no-input --skip-checks
        exec "#{python_executable}" -m granian \\
          --interface asginl \\
          --host "${PAPERLESS_INTERFACE:-127.0.0.1}" \\
          --port "${PAPERLESS_PORT:-8000}" \\
          --workers "${PAPERLESS_WEBSERVER_WORKERS:-2}" \\
          --ws \\
          --loop uvloop \\
          "paperless.asgi:application"
      EOS
      "paperless-consumer"  => <<~EOS,
        exec "#{python_executable}" "#{manage_py_script}" document_consumer
      EOS
      "paperless-worker"    => <<~EOS,
        export TMPDIR="#{var}/paperless-ngx/tmp"
        exec "#{celery_executable}" \\
          --app paperless \\
          worker \\
          --loglevel INFO \\
          --pool threads \\
          --without-mingle \\
          --without-gossip
      EOS
      "paperless-scheduler" => <<~EOS,
        exec "#{celery_executable}" \\
          --app paperless \\
          beat \\
          --loglevel INFO
      EOS
    }

    services.each do |name, body|
      service_dir = s6_services_dir/name
      service_dir.mkpath
      (service_dir/"run").write <<~EOS
        #!/bin/sh
        set -a
        . "#{conf_path}"
        set +a
        export PAPERLESS_CONFIGURATION_PATH="#{conf_path}"
        #{body}
      EOS
      (service_dir/"run").chmod 0755
    end

    # manage.py wrapper
    (buildpath/"paperless-manage").write <<~SH
      #!/usr/bin/env sh
      export PAPERLESS_CONFIGURATION_PATH="#{etc}/paperless-ngx/paperless.conf"
      exec "#{python_executable}" "#{manage_py_script}" "$@"
    SH
    bin.install "paperless-manage"
    (bin/"paperless-manage").chmod 0755
  end

  post_install_steps do
    mkdir_p "paperless-ngx/.gnupg", base: :var
    mkdir_p "paperless-ngx/consume", base: :var
    mkdir_p "paperless-ngx/data", base: :var
    mkdir_p "paperless-ngx/export", base: :var
    mkdir_p "paperless-ngx/media", base: :var
    mkdir_p "paperless-ngx/nltk_data", base: :var
    mkdir_p "paperless-ngx/tmp", base: :var
  end

  service do
    run [
      HOMEBREW_PREFIX/"bin/s6-softlimit",
      "-o", "65535",
      "--",
      HOMEBREW_PREFIX/"bin/s6-svscan",
      opt_libexec/"s6_services"
    ]
    # The service requires:
    # - PATH with runtime binaries
    # - HOME directory for gnupg
    # - NOSETPS to prevent a crash on macOS Tahoe (26.0)
    # See https://github.com/celery/celery/issues/9894
    # With this workaround, the Celery worker processes won't have descriptive titles and just appear as "Python"
    environment_variables(
      PATH:                         "#{HOMEBREW_PREFIX}/sbin:/usr/sbin:/usr/bin:/bin:#{HOMEBREW_PREFIX}/bin",
      HOME:                         "#{var}/paperless-ngx",
      PAPERLESS_CONFIGURATION_PATH: "#{etc}/paperless-ngx/paperless.conf",
      NOSETPS:                      "1",
    )
    keep_alive true
    log_path var/"log/paperless-ngx.log"
    error_log_path var/"log/paperless-ngx.log"
    working_dir var/"paperless-ngx"
  end

  def caveats
    <<~EOS
      Configuration:
        #{etc}/paperless-ngx/paperless.conf
    EOS
  end

  test do
    port = free_port
    ENV["PAPERLESS_SECRET_KEY"] = "test-secret-key-do-not-use-in-production"
    ENV["PAPERLESS_MEDIA_ROOT"] = testpath/"media"
    ENV["PAPERLESS_CONSUMPTION_DIR"] = testpath/"consume"
    ENV["GRANIAN_HOST"] = "127.0.0.1"
    ENV["GRANIAN_PORT"] = port.to_s
    pid = nil
    begin
      output_log = testpath/"output.log"
      pid = spawn(
        opt_libexec/"bin/python", "-m", "granian",
        "--interface", "asginl",
        "--ws", "paperless.asgi:application",
        [:out, :err] => output_log.to_s
      )

      timeout = 30
      interval = 0.5
      waited = 0.0
      listening = false
      while waited < timeout
        if output_log.exist? && output_log.read.include?("Listening at: http://127.0.0.1:#{port}")
          listening = true
          break
        end
        sleep interval
        waited += interval
      end
      assert listening, "granian did not start listening within #{timeout} seconds"
    ensure
      if pid
        Process.kill("KILL", pid)
        Process.wait(pid)
      end
    end
  end

  send(:resource, "psycopg-c") do
    url "https://files.pythonhosted.org/packages/cb/a0/8feb0ca8c7c20a8b9ac4d46b335ddd57e48e593b714262f006880f34fee5/psycopg_c-3.3.3.tar.gz"
    sha256 "86ef6f4424348247828e83fb0882c9f8acb33e64d0a5ce66c1b4a5107ee73edd"
  end
end
