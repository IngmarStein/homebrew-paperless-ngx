class PaperlessNgx < Formula
  include Language::Python::Virtualenv

  desc "Scan, index and archive all your physical documents"
  homepage "https://docs.paperless-ngx.com/"
  url "https://github.com/paperless-ngx/paperless-ngx/releases/download/v3.0.2/paperless-ngx-v3.0.2.tar.xz"
  sha256 "b74c2eecbd4933106447e530a4adb5b35ee3ec3499501339744057a285072881"
  license "GPL-3.0-or-later"

  livecheck do
    url "https://github.com/paperless-ngx/paperless-ngx/releases/latest"
    strategy :github_releases
  end

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 cellar: :any, arm64_tahoe:  "cc08726d1ec2d95000d0c6fb1424af347a9054dbda0fded3db0f6d25ae0477d8"
    sha256 cellar: :any, x86_64_linux: "a05095053d96959fbdce2b1150c35e28bfc709888d27ec53ba0601cced6930a3"
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
    url "https://files.pythonhosted.org/packages/1d/cc/58f26f118d8099f84e009ce560b9148a3f803e63fa8473b57feb67241875/aiohttp-3.14.2.tar.gz"
    sha256 "f96821eb2ae2f12b0dfa799eafbf221f5621a9220b457b4744a269a63a5f3a6c"
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
    url "https://files.pythonhosted.org/packages/57/ba/046ceea27344560984e26a590f90bc7f4a75b06701f653222458922b558c/annotated_doc-0.0.4.tar.gz"
    sha256 "fbcda96e87e9c92ad167c2e53839e57503ecfda18804ea28102353485033faa4"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/61/cc/a381afa6efea9f496eff839d4a6a1aed3bfafc7b3ab4b0d1b243a12573dd/anyio-4.14.2.tar.gz"
    sha256 "cfa139f3ed1a23ee8f88a145ddb5ac7605b8bbfd8592baacd7ce3d8bb4313c7f"
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
    url "https://files.pythonhosted.org/packages/a1/b5/4784ee9518b97f9f69c714a4303f9a6186a7e4ff2349f89e24767e9754d9/banks-2.4.5.tar.gz"
    sha256 "ff575732fc67d5493a73c21e0d7268bc49e86fff02b0b8735e8efb9fcb9af3a4"
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
    url "https://files.pythonhosted.org/packages/bd/2a/23f34ec9d04624958e137efdc394888716353190e75f25dd22c7a2c7a8aa/charset_normalizer-3.4.9.tar.gz"
    sha256 "673611bbd43f0810bec0b0f028ddeaaa501190339cac411f347ac76917c3ae7b"
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
    url "https://files.pythonhosted.org/packages/d3/f4/561c49bca97af561d34eed27e3e831135eb5cb88e754c1150be41820f5c6/dateparser-1.4.1.tar.gz"
    sha256 "f265df13c0380e2e07543ba74b67c0681aaa1096981ffcd35227e1aa0cb81c7c"
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
    url "https://files.pythonhosted.org/packages/a9/26/889449d521ae508b26de715954faecd8bcf3f740affb81b2d146a83b42a5/django-5.2.16.tar.gz"
    sha256 "59ea02020c3136fce14bef0bbece21a10a4febef5eed1c51c22ae468efa22200"
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
    url "https://files.pythonhosted.org/packages/6c/d6/2f4033cc3443b7ce15459247488050cd0b8b56f15a03fcf2650b2483026e/django_cachalot-2.9.0.tar.gz"
    sha256 "67d3d19a3f6deab7dc5b081b5f78ea926318f64a7b3afb06f28e61d8d31e02b3"
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
    url "https://files.pythonhosted.org/packages/88/89/0b0b268b158cd9155c1b49ebd1429a186228af359c84ab6fd74ecea572e4/django_guardian-3.3.2.tar.gz"
    sha256 "f8edcf1576eb15d1593e23955693723ef351a7340667f9159e7bec786559c1ab"
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
    url "https://files.pythonhosted.org/packages/71/8b/ff8bca02000c1d211e8eb29111fe45fd725992fc53511384b57824225333/django_treenode-0.24.0.tar.gz"
    sha256 "7ad2198620c285ebaa9a75d0bdcb9164c5e88c084f4c3e8f765ed0fa44cbd0d6"
  end

  resource "djangorestframework" do
    url "https://files.pythonhosted.org/packages/ca/d7/c016e69fac19ff8afdc89db9d31d9ae43ae031e4d1993b20aca179b8301a/djangorestframework-3.17.1.tar.gz"
    sha256 "a6def5f447fe78ff853bff1d47a3c59bf38f5434b031780b351b0c73a62db1a5"
  end

  resource "djangorestframework-guardian" do
    url "https://files.pythonhosted.org/packages/c1/c4/67df9963395e9dddd4e16cbf75098953798e5135f73fb8f4855895505e39/djangorestframework_guardian-0.4.0.tar.gz"
    sha256 "a8113659e062f65b74cc31af6982420c382642e782d38581b3fdc748a179756c"
  end

  resource "drf-spectacular" do
    url "https://files.pythonhosted.org/packages/50/43/41d25039a6a53545420ebc98eb9f877ec9fe30c7bd03fefabcaf9b953af7/drf_spectacular-0.30.0.tar.gz"
    sha256 "53e79e7ba00e240441b63c32273754a5368e4c2ab44a19f2595277cc1cd559c9"
  end

  resource "drf-spectacular-sidecar" do
    url "https://files.pythonhosted.org/packages/0b/e9/600a7806111c6d1ba49d7e31bfc978a745682724310ad29b0d2c068f1f73/drf_spectacular_sidecar-2026.5.1.tar.gz"
    sha256 "cdeca03e32859318a563b5733d5fc196c8b563a178a85fd380e227ed642c19ca"
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
    url "https://files.pythonhosted.org/packages/35/94/00f2059e4835eace3ae8fde680b932c496f8ec7bdc99168dfa53fb2e6b79/filelock-3.29.7.tar.gz"
    sha256 "5b481979797ae69e72f0b389d89a80bdd585c260c5b3f1fb9c0a5ba9bb3f195d"
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
    url "https://files.pythonhosted.org/packages/84/69/c97f2c18e0db87d2c7b15da1974dace76ae938f1cfa22e2727a648b7ed43/fonttools-4.63.0.tar.gz"
    sha256 "caeb583deeb5168e694b65cda8b4ee62abedfa66cf88488734466f2366b9c4e0"
  end

  resource "fpdf2" do
    url "https://files.pythonhosted.org/packages/27/f2/72feae0b2827ed38013e4307b14f95bf0b3d124adfef4d38a7d57533f7be/fpdf2-2.8.7.tar.gz"
    sha256 "7060ccee5a9c7ab0a271fb765a36a23639f83ef8996c34e3d46af0a17ede57f9"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2d/f5/c831fac6cc817d26fd54c7eaccd04ef7e0288806943f7cc5bbf69f3ac1f0/frozenlist-1.8.0.tar.gz"
    sha256 "3ede829ed8d842f6cd48fc7081d7a41001a56f1f38603f9d49bf3020d59a31ad"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/10/a1/ae4e3e5003468d6391d2c77b6fa1cd73bd5d13511d81c642d7b28ac90ed4/fsspec-2026.6.0.tar.gz"
    sha256 "f5bac145310fe30e16e1471bd6840b2d990d609e872251d7e674241822abf01a"
  end

  resource "gotenberg-client" do
    url "https://files.pythonhosted.org/packages/f5/34/8e3be3a6a1b654d2a3bfa3e5d201183aeff6d50c42199ac0b8ed912c01c5/gotenberg_client-0.14.0.tar.gz"
    sha256 "a853700c6b01c3372871264c4eb9ae3375addafbcbbfd3341e411f4217a8088c"
  end

  resource "greenlet" do
    url "https://files.pythonhosted.org/packages/e2/f1/fbbfef6af0bad0548f09bc28948ea3c275b4edb19e17fc5ca9900a6a634d/greenlet-3.5.3.tar.gz"
    sha256 "a61efc018fd3eb317eeca31aba90ee9e7f26f22884a79b6c6ec715bf71bb62f1"
  end

  resource "griffe" do
    url "https://files.pythonhosted.org/packages/00/44/63913c007814cab5ba9d36f25ad40dfc640c2e2931d195bd2d05f774a5d6/griffe-2.1.0.tar.gz"
    sha256 "c58845df5a364feaabd05ee8c767b97b03e478da8aa18b9923553c812fb0d955"
  end

  resource "griffecli" do
    url "https://files.pythonhosted.org/packages/8e/c6/90f85d47af96300d629b38c25b71aad9467a620cac964a39280e822efc8a/griffecli-2.1.0.tar.gz"
    sha256 "2ff68dbee9395fdb668b10374c51683392d697b226ac60159798f4add1ee716c"
  end

  resource "griffelib" do
    url "https://files.pythonhosted.org/packages/33/e4/8d187ea29c2e30b3a09505c567513077d6117861bde1fbd997a167f262ec/griffelib-2.1.0.tar.gz"
    sha256 "762a186d2c6fd6794d4ea20d428d597ffb857cb56b66421651cbba15bdd5e813"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "h2" do
    url "https://files.pythonhosted.org/packages/1d/17/afa56379f94ad0fe8defd37d6eb3f89a25404ffc71d4d848893d270325fc/h2-4.3.0.tar.gz"
    sha256 "6c59efe4323fa18b47a632221a1888bd7fde6249819beda254aeca909f221bf1"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/63/39/67be8d71f900d9a55761b6022821d6679fb56c64f1b6063d5af2c2606727/hf_xet-1.5.2.tar.gz"
    sha256 "73044bd31bae33c984af832d19c752a0dffb67518fee9ddbd91d616e1101cf47"
  end

  resource "hiredis" do
    url "https://files.pythonhosted.org/packages/1f/e2/1654d65851f39fd94e91a77a5655d09d4b64901fdc594020d8348db697b2/hiredis-3.4.0.tar.gz"
    sha256 "da19331354433af6a2c54c21f2d70ba084933c0d7d2c43578ec5c5b446674ad5"
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
    url "https://files.pythonhosted.org/packages/df/9b/d3bb4e7d792835daf34dd7091bbc7d7b4e0437d9388f1ea7239cce49f478/huggingface_hub-1.24.0.tar.gz"
    sha256 "18431ff4daae0749aa9ba102fc952e314c98e1d30ebdec5319d85ca0a83e1ae5"
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
    url "https://files.pythonhosted.org/packages/cd/63/9496c57188a2ee585e0f1db071d75089a11e98aa86eb99d9d7618fc1edce/idna-3.18.tar.gz"
    sha256 "ffb385a7e039654cef1ab9ef32c6fafe283c0c0467bba1d9029738ce4a14a848"
  end

  resource "ijson" do
    url "https://files.pythonhosted.org/packages/3a/06/b31f040a8764336a11152e474a7abcb3782fedb0d1cdf78f442b82878c56/ijson-3.5.1.tar.gz"
    sha256 "af40bd1a85f55db0b8b30715c858761306bd92d5590148636f75c3309e6e76bd"
  end

  resource "imap-tools" do
    url "https://files.pythonhosted.org/packages/f7/cb/76d8697739439be6dd0261db5a27c945fb6a43e054f2d2e90283be502058/imap_tools-1.13.0.tar.gz"
    sha256 "0da0d72c921a724cba09b959bad9bfaf60bca537a697e69a076fdf607ef5775c"
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
    url "https://files.pythonhosted.org/packages/5c/ac/f885ae14317af43a026c909ea4d2083fcee2f0d014f90426b5b9aa1f9912/llama_index_core-0.14.23.tar.gz"
    sha256 "c4baf2f2ab4f84e95090fe7941e0c87d6c514304f7bd2a749b8fa22164c1822b"
  end

  resource "llama-index-embeddings-huggingface" do
    url "https://files.pythonhosted.org/packages/a1/b3/faa44f7c9edaaefb6f7e1d8a306433c4ccc5ea5bde92302bec149e62b838/llama_index_embeddings_huggingface-0.7.0.tar.gz"
    sha256 "da8a2a65df9404112c4430dfada09d4f846ba165197a25dbe77f734014c56a87"
  end

  resource "llama-index-embeddings-ollama" do
    url "https://files.pythonhosted.org/packages/8b/cd/2cff1feac66368a4c60ea7afbdbb3f3fdd49ee8c279fc105457e726a3ad2/llama_index_embeddings_ollama-0.9.0.tar.gz"
    sha256 "19d2d2a0e3f0934480eae31243ac5f1ce171319578b9c0adad25cf1b6c35659e"
  end

  resource "llama-index-embeddings-openai" do
    url "https://files.pythonhosted.org/packages/06/52/eb56a4887501651fb17400f7f571c1878109ff698efbe0bbac9165a5603d/llama_index_embeddings_openai-0.6.0.tar.gz"
    sha256 "eb3e6606be81cb89125073e23c97c0a6119dabb4827adbd14697c2029ad73f29"
  end

  resource "llama-index-embeddings-openai-like" do
    url "https://files.pythonhosted.org/packages/b2/df/79e4748196213b55931d5f8377141fff41135f5988d5501860824cc95390/llama_index_embeddings_openai_like-0.3.1.tar.gz"
    sha256 "cef7af4bce284e8e6730532dbd0aa325e77398a5d5524edb2d2e3acb122fb5b6"
  end

  resource "llama-index-instrumentation" do
    url "https://files.pythonhosted.org/packages/4e/d0/671b23ccff255c9bce132a84ffd5a6f4541ceefdeab9c1786b08c9722f2e/llama_index_instrumentation-0.5.0.tar.gz"
    sha256 "eeb724648b25d149de882a5ac9e21c5acb1ce780da214bda2b075341af29ad8e"
  end

  resource "llama-index-llms-ollama" do
    url "https://files.pythonhosted.org/packages/17/8c/dcda55d685d1094bcffa3f4f2b30bb45ade5aa93694617272bf6c81d5822/llama_index_llms_ollama-0.10.1.tar.gz"
    sha256 "470ed836dee43bc0171dc05c68c2daa3618a7c38166b8044d7f8360cd8cd8fa6"
  end

  resource "llama-index-llms-openai" do
    url "https://files.pythonhosted.org/packages/b2/85/f07466d0f5c3f1e1f295a60f2d2e9d32163635ba39ae2fda22ce2fbac1c9/llama_index_llms_openai-0.7.9.tar.gz"
    sha256 "f54a24b717134c86e724007057a06a84394f019d1f01e918b624894e208a86df"
  end

  resource "llama-index-llms-openai-like" do
    url "https://files.pythonhosted.org/packages/3b/a3/16410b28d131aa113ada79f856b78cb68a8e92a1e27255ea9c36c27a5dec/llama_index_llms_openai_like-0.7.2.tar.gz"
    sha256 "ed9ff73f975dce470f98ac61c982151ba78eedfa3fb9b03894bc1d1312b213ff"
  end

  resource "llama-index-workflows" do
    url "https://files.pythonhosted.org/packages/ed/22/4d0cd67428b4a54e014606f88bc6420aae7775ad1f13bd30d4d94f4899a3/llama_index_workflows-2.22.2.tar.gz"
    sha256 "97b64bcf72e77e1a0380068cda09e5d0774b75abdb891096c433686c2f299e3e"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/05/3b/aab6728cae887456f409b4d75e8a01856e4f04bd510de38052a47768b680/lxml-6.1.1.tar.gz"
    sha256 "ba96ae44888e0185281e937633a743ea90d5a196c6000f82565ebb0580012d40"
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
    url "https://files.pythonhosted.org/packages/31/f9/c0a1c127f9049db9155afc316952ea571720dd01833ff5e4d7e8e6352dbb/msgpack-1.2.1.tar.gz"
    sha256 "04c721c2c7448767e9e3f2520a475663d8ee0f09c31890f6d2bd70fd636a9647"
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
    url "https://files.pythonhosted.org/packages/2b/1d/58946e5aab18393e793bd4add6985b95d0e01c3a2d832f38f54468b10dcd/narwhals-2.24.0.tar.gz"
    sha256 "b5c0f684ccd9d7475b564111e319a4964abcf2baf79d3cf6b1003d06ac9b828d"
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
    url "https://files.pythonhosted.org/packages/96/02/df4f105b28a7c16b0e41423bc09cf0f1b8a305df4ef0b10ca74a2e4c648c/nltk-3.10.0.tar.gz"
    sha256 "4fbac1d98203cbcd1b5d94a2877fb822300072d80604a5e7fae49d2c5f84e8c1"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/0b/5f/19930f824ffeb0ad4372da4812c50edbd1434f678c90c2733e1188edfc63/oauthlib-3.3.1.tar.gz"
    sha256 "0f0f8aa759826a193cf66c12ea1af1637f87b9b4622d46e866952bb022e538c9"
  end

  resource "ocrmypdf" do
    url "https://files.pythonhosted.org/packages/6a/ba/26dd03706f5f387acb5d0e11d33dbe716f5cbce95e033e68404636eb3de5/ocrmypdf-17.4.2.tar.gz"
    sha256 "b564557411c9a2695137cdc34e0a1a5084c5f33d7b3ef593f2659aa6a6a1c3cd"
  end

  resource "ollama" do
    url "https://files.pythonhosted.org/packages/fc/72/5f12423b6b39ca8430fbe56f77fcf4ef60f63067c7c4a2e30e200ed9ec16/ollama-0.6.2.tar.gz"
    sha256 "936d55daa684f474364c098611c933626f8d6c7d67065c5b7ae0c477b508b07f"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/af/ac/f725c4efbda8657d02be684607e5a2e5ce362e4790fdbcbdfb7c15018647/openai-2.46.0.tar.gz"
    sha256 "0421e0735ac41451cad894af4cddf0435bfbf8cbc538ac0e15b3c062f2ddc06a"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d7/f1/e7a6dd94a8d4a5626c03e4e99c87f241ba9e350cd9e6d75123f992427270/packaging-26.2.tar.gz"
    sha256 "ff452ff5a3e828ce110190feff1178bb1f2ea2281fa2075aadb987c2fb221661"
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
    url "https://files.pythonhosted.org/packages/95/e7/45265a52196e7b1e4d1fdee57159d25670275784f5eeb3651327cf68e137/pikepdf-10.10.0.tar.gz"
    sha256 "9f134806b2fe608ccb21379a664ddcefeac3f6944100d343b350299d3c69754e"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/78/9b/560e4be8e26f6fd133a03630a8df0c663b9e8d61b4ade152b72005aec83b/platformdirs-4.11.0.tar.gz"
    sha256 "0555d18370482847566ffabcaa53ad7c6c1c29f195989ae1ed634a05f76ea1e0"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/f9/e2/3e91f31a7d2b083fe6ef3fa267035b518369d9511ffab804f839851d2779/pluggy-1.6.0.tar.gz"
    sha256 "7dcc130b76258d33b90f61b658791dede3486c3e6bfb003ee5c9bfb396dd22f3"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/5e/77/65b857a69ed876e1951e88aaba60f5ce6120c33703f7cb61a3c894b8c1b6/portalocker-3.2.0.tar.gz"
    sha256 "1f3002956a54a8c3730586c5c77bf18fae4149e07eaf1c29fc3faf4d5a3f89ac"
  end

  resource "prometheus-client" do
    url "https://files.pythonhosted.org/packages/1b/fb/d9aa83ffe43ce1f19e557c0971d04b90561b0cfd50762aafb01968285553/prometheus_client-0.25.0.tar.gz"
    sha256 "5e373b75c31afb3c86f1a52fa1ad470c9aace18082d39ec0d2f918d11cc9ba28"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/a1/96/06e01a7b38dce6fe1db213e061a4602dd6032a8a97ef6c1a862537732421/prompt_toolkit-3.0.52.tar.gz"
    sha256 "28cde192929c8e7321de85de1ddbe736f1375148b02f2e17edd840042b1be855"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/ec/44/c87281c333769159c50594f22610f77398a47ccbfbbf23074e744e86f87c/propcache-0.5.2.tar.gz"
    sha256 "01c4fc7480cd0598bb4b57022df55b9ca296da7fc5a8760bd8451a7e63a7d427"
  end

  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/db/2f/cb91e5502ec9de1de6f1b76cfbf69531932725361168bb06963620c77e2e/psycopg-3.3.4.tar.gz"
    sha256 "e21207764952cff81b6b8bdacad9a3939f2793367fdac2987b3aac36a651b5bc"
  end

  resource "psycopg-pool" do
    url "https://files.pythonhosted.org/packages/90/82/7a23d26039827ecd4ebe93905651029ddd307c5182ad59296dfb6f67b528/psycopg_pool-3.3.1.tar.gz"
    sha256 "b10b10b7a175d5cc1592147dc5b7eec8a9e0834eb3ed2c4a92c858e2f51eb63c"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/c3/b2/bc9c9196916376152d655522fdcebac55e66de6603a76a02bca1b6414f6c/pygments-2.20.0.tar.gz"
    sha256 "6757cd03768053ff99f3039c1a36d6c0aa0b263438fcab17520b30a303a82b5f"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/3b/81/58d0ac84e1ef3a3843791d6954d94c0b33d526c75eeb1efbce9d0a4c4077/pyjwt-2.13.0.tar.gz"
    sha256 "41571c89ca91598c79e8ef18a2d07367d4810fbbd6f637794879baf1b7703423"
  end

  resource "pypdfium2" do
    url "https://files.pythonhosted.org/packages/db/42/0b51bdf50ccf13f3deb3209ca996179a49761dc191748469cf0de55b0055/pypdfium2-5.12.1.tar.gz"
    sha256 "d0e0648fb2e28f50efcd1ec0a5a18ced9f4d66b2c227fae9b603f0a883b2d13f"
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
    url "https://files.pythonhosted.org/packages/82/ed/0301aeeac3e5353ef3d94b6ec08bbcabd04a72018415dcb29e588514bba8/python_dotenv-1.2.2.tar.gz"
    sha256 "2c371a91fbd7ba082c2c1dc1f8bf89ca22564a087c2c287cd9b662adde799cf3"
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
    url "https://files.pythonhosted.org/packages/ff/46/dd499ec9038423421951e4fad73051febaa13d2df82b4064f87af8b8c0c3/pytz-2026.2.tar.gz"
    sha256 "0e60b47b29f21574376f218fe21abc009894a2321ea16c6754f3cad6eb7cdd6a"
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
    url "https://files.pythonhosted.org/packages/2c/21/ef6157213316e85790041254259907eb722e00b03480256c0545d98acd33/rapidfuzz-3.14.5.tar.gz"
    sha256 "ba10ac57884ce82112f7ed910b67e7fb6072d8ef2c06e30dc63c0f604a112e0e"
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
    url "https://files.pythonhosted.org/packages/20/98/04b13f1ddfb63158025291c02e03eb42fbb7acb51d091d541050eb4e35e8/regex-2026.7.19.tar.gz"
    sha256 "7e77b324909c1617cbb4c668677e2c6ae13f44d7c1de0d4f15f2e3c10f3315b5"
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
    url "https://files.pythonhosted.org/packages/f9/56/d2cb00765a6b15c994a7fccf20f9032f16e8193ca49147cb5155166ad744/sentence_transformers-5.6.0.tar.gz"
    sha256 "0e7164d051e416c1853ade7c274ff52af3f9da0f4be7f0b83d734c27699e1057"
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
    url "https://files.pythonhosted.org/packages/02/f1/a7a892f18d4d224e6b26f706531eafccc41e37594d37d304786969ee13cb/sqlalchemy-2.0.51.tar.gz"
    sha256 "804dccd8a4a6242c4e30ad961e540e18a588f6527202f2d6791b01845d59fdc9"
  end

  resource "sqlparse" do
    url "https://files.pythonhosted.org/packages/90/76/437d71068094df0726366574cf3432a4ed754217b436eb7429415cf2d480/sqlparse-0.5.5.tar.gz"
    sha256 "e20d4a9b0b8585fdf63b10d30066c7c94c5d7a7ec47c889a2d83a3caa93ff28e"
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
    url "https://files.pythonhosted.org/packages/e4/e5/5f3cb2159769d0f4324c0e9e87f9de3c4b1cd45848a96b2eb3566ad5ca77/tiktoken-0.13.0.tar.gz"
    sha256 "c9435714c3a84c2319499de9a300c0e604449dd0799ff246458b3bb6a7f433c1"
  end

  resource "tinytag" do
    url "https://files.pythonhosted.org/packages/96/59/8a8cb2331e2602b53e4dc06960f57d1387a2b18e7efd24e5f9cb60ea4925/tinytag-2.2.1.tar.gz"
    sha256 "e6d06610ebe7cd66fd07be2d3b9495914ab32654a5e47657bb8cd44c2484523c"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/73/6f/f80cfef4a312e1fb34baf7d85c72d4411afde10978d4657f8cdd811d3ccc/tokenizers-0.22.2.tar.gz"
    sha256 "473b83b915e547aa366d1eee11806deaf419e17be16310ac0a14077f1e28f917"
  end

  resource "tornado" do
    url "https://files.pythonhosted.org/packages/64/24/95ec527ad67b76d59299e5465b3935d05e4294b7e0290a3924b7487df30b/tornado-6.5.7.tar.gz"
    sha256 "66c513a76cda70d53907bc27cf1447557699c2e95aa48ba27a442ff61c3ddfc2"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/8c/69/40407dfc835517f058b603dbf37a6df094d8582b015a51eddc988febbcb7/tqdm-4.69.0.tar.gz"
    sha256 "700c5e85dcd5f009dd6222588a29180a193a748247a5d855b4d67db93d79a53b"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/5a/fb/2a2ba88f325e68a921d8b69ff63b477830b2e73ade9a3c8c8cab2f06d741/transformers-5.14.1.tar.gz"
    sha256 "60d196c27781eacf8637e2b533f517582907ad6f9ae142046d6b69431a5b2173"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/37/78/fda3361b56efc27944f24225f6ecd13d96d6fcfe37bd0eb34e2f4c63f9fc/typer-0.27.0.tar.gz"
    sha256 "629bd12ea5d13a17148125d9a264f949eb171fb3f120f9b04d85873cab054fa5"
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
    url "https://files.pythonhosted.org/packages/0c/2d/25769d2262cafcea748aac7bfb2b9eeb0a9fe2a759b4154133a6d9f39870/uharfbuzz-0.55.0.tar.gz"
    sha256 "a29bda4c147c35240a71051315423b1933b46eac558a72f55d9ffdc1f2bbb69f"
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
    url "https://files.pythonhosted.org/packages/34/74/c6428f875774288bec1396f5bfcbc2d925700a4dad61727fd5f2b12f249d/wcwidth-0.8.2.tar.gz"
    sha256 "91fbef97204b96a3d4d421609b80340b760cf33e26da123ff243d76b1fda8dda"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "whitenoise" do
    url "https://files.pythonhosted.org/packages/cb/2a/55b3f3a4ec326cd077c1c3defeee656b9298372a69229134d930151acd01/whitenoise-6.12.0.tar.gz"
    sha256 "f723ebb76a112e98816ff80fcea0a6c9b8ecde835f8ddda25df7a30a3c2db6ad"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/fe/a4/282c8e64300a59fc834518a54bf0afabb4ff9218b5fa76958b450459a844/wrapt-2.2.2.tar.gz"
    sha256 "0788e321027c999bf221b667bd4a54aaefd1a36283749a860ac3eb77daed0302"
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
    url "https://files.pythonhosted.org/packages/f1/c6/ac2a12cdc2b1c296804fc6a65bf112b607825ca7f47742a5aca541134711/zxing_cpp-3.0.0.tar.gz"
    sha256 "703353304de24d947bd68044fac4e062953a7b64029de6941ba8ffeb4476b60d"
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
    mkdir_p "paperless-ngx/.gnupg"
    mkdir_p "paperless-ngx/consume"
    mkdir_p "paperless-ngx/data"
    mkdir_p "paperless-ngx/export"
    mkdir_p "paperless-ngx/media"
    mkdir_p "paperless-ngx/nltk_data"
    mkdir_p "paperless-ngx/tmp"
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
