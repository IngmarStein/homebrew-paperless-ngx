class PaperlessNgx < Formula
  include Language::Python::Virtualenv

  desc "Scan, index and archive all your physical documents"
  homepage "https://docs.paperless-ngx.com/"
  url "https://github.com/paperless-ngx/paperless-ngx/archive/refs/tags/v2.20.3.tar.gz"
  sha256 "e81b6dfdb16213182a53ea0bb32c7fcadab20b2dae649df7711569ea76d4ba8e"
  license "GPL-3.0-or-later"

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 arm64_tahoe:  "1bf36c9bf90a4897611b16b56b7c65bbb22c97e6786014e516965acaf411fe28"
    sha256 x86_64_linux: "810415a2133ac76e2fb23f9ba0a4f7784a946f06a1114a8dd89913b0ad8f7be6"
  end

  depends_on "angular-cli" => :build
  depends_on "autoconf" => :build
  depends_on "cmake" => :build
  depends_on "cython" => :build
  depends_on "maturin" => :build
  depends_on "meson" => :build
  depends_on "mypy" => :build
  depends_on "node" => :build
  depends_on "patchelf" => :build
  depends_on "pkgconf" => :build
  depends_on "pnpm" => :build
  depends_on "python-setuptools" => :build
  depends_on "rust" => :build
  depends_on "certifi"
  depends_on "cffi"
  depends_on "cryptography"
  depends_on "ghostscript"
  depends_on "gnupg"
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
  depends_on "python@3.14"
  depends_on "qpdf"
  depends_on "s6"
  depends_on "scipy"
  depends_on "tesseract-lang"

  uses_from_macos "libxml2"
  uses_from_macos "libxslt"
  uses_from_macos "zlib"

  # fido2: breaking change in fido2-2.0.0, so pinned to 1.2.0
  # psycopg-c: breaks `brew update-python-resources` (which can't find pg_config), hence a manual addition below
  pypi_packages exclude_packages: %w[certifi cffi cryptography pillow scipy numpy pycparser],
                extra_packages:   ["granian[uvloop]", "fido2==1.2.0", "psycopg-pool"]

  resource "amqp" do
    url "https://files.pythonhosted.org/packages/79/fc/ec94a357dfc6683d8c86f8b4cfa5416a4c36b28052ec8260c77aca96a443/amqp-5.3.1.tar.gz"
    sha256 "cddc00c725449522023bad949f70fff7b48f0b1ade74d170a6f10ab044739432"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/16/ce/8a777047513153587e5434fd752e89334ac33e379aa3497db860eeb60377/anyio-4.12.0.tar.gz"
    sha256 "73c693b567b0c55130c104d0b43a9baf3aa6a31fc6110116509f27bf75e21ec0"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/76/b9/4db2509eabd14b4a8c71d1b24c8d5734c52b8560a7b1e1a8b56c8d25568b/asgiref-3.11.0.tar.gz"
    sha256 "13acff32519542a1736223fb79a715acdebe24286d98e8b164a73085f40da2c4"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/6b/5c/685e6633917e101e5dcb62b9dd76946cbb57c26e133bae9e0cd36033c0a9/attrs-25.4.0.tar.gz"
    sha256 "16d5969b87f0859ef33a48b35d55ac1be6e42ae49d5e853b597db70c35c57e11"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/6b/d52e42361e1aa00709585ecc30b3f9684b3ab62530771402248b1b1d6240/babel-2.17.0.tar.gz"
    sha256 "0c54cffb19f690cdcc52a3b50bcbf71e07a808d1c80d549f2459b9d2cf0afb9d"
  end

  resource "billiard" do
    url "https://files.pythonhosted.org/packages/58/23/b12ac0bcdfb7360d664f40a00b1bda139cbbbced012c34e375506dbd0143/billiard-4.2.4.tar.gz"
    sha256 "55f542c371209e03cd5862299b74e52e4fbcba8250ba611ad94276b369b6a85f"
  end

  resource "bleach" do
    url "https://files.pythonhosted.org/packages/07/18/3c8523962314be6bf4c8989c79ad9531c825210dd13a8669f6b84336e8bd/bleach-6.3.0.tar.gz"
    sha256 "6f3b91b1c0a02bb9a78b5a454c92506aa0fdf197e1d5e114d2e00c6f64306d22"
  end

  resource "brotli" do
    url "https://files.pythonhosted.org/packages/f7/16/c92ca344d646e71a43b8bb353f0a6490d7f6e06210f8554c8f874e454285/brotli-1.2.0.tar.gz"
    sha256 "e310f77e41941c13340a95976fe66a8a95b01e783d430eeaf7a2f87e0a57dd0a"
  end

  resource "cached-property" do
    url "https://files.pythonhosted.org/packages/76/4b/3d870836119dbe9a5e3c9a61af8cc1a8b69d75aea564572e385882d5aefb/cached_property-2.0.1.tar.gz"
    sha256 "484d617105e3ee0e4f1f58725e72a8ef9e93deee462222dbd51cd91230897641"
  end

  resource "celery" do
    url "https://files.pythonhosted.org/packages/bb/7d/6c289f407d219ba36d8b384b42489ebdd0c84ce9c413875a8aae0c85f35b/celery-5.5.3.tar.gz"
    sha256 "6c972ae7968c2b5281227f01c3a3f984037d21c5129d07bf3550cc2afc6b10a5"
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
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "94537985111c35f28720e43603b8e7b43a6ecfb2ce1d3058bbe955b73404e21a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
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

  resource "concurrent-log-handler" do
    url "https://files.pythonhosted.org/packages/6b/ed/68b9c3a07a2331361a09a194e4375c4ee680a799391cfb1ca924ca2b6523/concurrent_log_handler-0.9.28.tar.gz"
    sha256 "4cc27969b3420239bd153779266f40d9713ece814e312b7aa753ce62c6eacdb8"
  end

  resource "dateparser" do
    url "https://files.pythonhosted.org/packages/a9/30/064144f0df1749e7bb5faaa7f52b007d7c2d08ec08fed8411aba87207f68/dateparser-1.2.2.tar.gz"
    sha256 "986316f17cb8cdc23ea8ce563027c5ef12fc725b6fb1d137c14ca08777c5ecf7"
  end

  resource "deprecated" do
    url "https://files.pythonhosted.org/packages/49/85/12f0a49a7c4ffb70572b6c2ef13c90c88fd190debda93b23f026b25f9634/deprecated-1.3.1.tar.gz"
    sha256 "b1b50e0ff0c1fddaa5708a2c6b0a6588bb09b892825ab2b214ac9ea9d92a5223"
  end

  resource "deprecation" do
    url "https://files.pythonhosted.org/packages/5a/d3/8ae2869247df154b64c1884d7346d412fed0c49df84db635aab2d1c40e62/deprecation-2.1.0.tar.gz"
    sha256 "72b3bde64e5d778694b0cf68178aed03d15e15477116add3fb773e581f9518ff"
  end

  resource "django" do
    url "https://files.pythonhosted.org/packages/eb/1c/188ce85ee380f714b704283013434976df8d3a2df8e735221a02605b6794/django-5.2.9.tar.gz"
    sha256 "16b5ccfc5e8c27e6c0561af551d2ea32852d7352c67d452ae3e76b4f6b2ca495"
  end

  resource "django-allauth" do
    url "https://files.pythonhosted.org/packages/52/94/75d7f8c59e061d1b66a6d917b287817fe02d2671c9e6376a4ddfb3954989/django_allauth-65.12.1.tar.gz"
    sha256 "662666ff2d5c71766f66b1629ac7345c30796813221184e13e11ed7460940c6a"
  end

  resource "django-auditlog" do
    url "https://files.pythonhosted.org/packages/37/d8/ddd1c653ffb7ed1984596420982e32a0b163a0be316721a801a54dcbf016/django_auditlog-3.3.0.tar.gz"
    sha256 "01331a0e7bb1a8ff7573311b486c88f3d0c431c388f5a1e4a9b6b26911dd79b8"
  end

  resource "django-cachalot" do
    url "https://files.pythonhosted.org/packages/f5/53/1f781e58028a43028d6c799f2eab15eff65e841e3e288d6f2953e36f01a4/django_cachalot-2.8.0.tar.gz"
    sha256 "30456720ac9f3fabeb90ce898530fe01130c25a1eca911cd016cfaeab251d627"
  end

  resource "django-celery-results" do
    url "https://files.pythonhosted.org/packages/a6/b5/9966c28e31014c228305e09d48b19b35522a8f941fe5af5f81f40dc8fa80/django_celery_results-2.6.0.tar.gz"
    sha256 "9abcd836ae6b61063779244d8887a88fe80bbfaba143df36d3cb07034671277c"
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
    url "https://files.pythonhosted.org/packages/e2/f9/bcff6a931298b9eb55e1550b55ab964fab747f594ba6d2d81cbe19736c5f/django_guardian-3.2.0.tar.gz"
    sha256 "9e18ecd2e211b665972690c2d03d27bce0ea4932b5efac24a4bb9d526950a69e"
  end

  resource "django-multiselectfield" do
    url "https://files.pythonhosted.org/packages/04/9a/27060e8aa491ff2d286054df2e89df481a8dfe0e5e459fa36c0f48e3c10c/django_multiselectfield-1.0.1.tar.gz"
    sha256 "3f8b4fff3e07d4a91c8bb4b809bc35caeb22b41769b606f4c9edc53b8d72a667"
  end

  resource "django-soft-delete" do
    url "https://files.pythonhosted.org/packages/98/d1/c990b731676f93bd4594dee4b5133df52f5d0eee1eb8a969b4030014ac54/django_soft_delete-1.0.22.tar.gz"
    sha256 "32d0bb95f180c28a40163e78a558acc18901fd56011f91f8ee735c171a6d4244"
  end

  resource "django-treenode" do
    url "https://files.pythonhosted.org/packages/25/58/86edbbd1075bb8bc0962c6feb13bc06822405a10fea8352ad73ab2babdd9/django_treenode-0.23.3.tar.gz"
    sha256 "714c825d5b925a3d2848d0709f29973941ea41a606b8e2b64cbec46010a8cce3"
  end

  resource "djangorestframework" do
    url "https://files.pythonhosted.org/packages/8a/95/5376fe618646fde6899b3cdc85fd959716bb67542e273a76a80d9f326f27/djangorestframework-3.16.1.tar.gz"
    sha256 "166809528b1aced0a17dc66c24492af18049f2c9420dbd0be29422029cfc3ff7"
  end

  resource "djangorestframework-guardian" do
    url "https://files.pythonhosted.org/packages/c1/c4/67df9963395e9dddd4e16cbf75098953798e5135f73fb8f4855895505e39/djangorestframework_guardian-0.4.0.tar.gz"
    sha256 "a8113659e062f65b74cc31af6982420c382642e782d38581b3fdc748a179756c"
  end

  resource "drf-spectacular" do
    url "https://files.pythonhosted.org/packages/5e/0e/a4f50d83e76cbe797eda88fc0083c8ca970cfa362b5586359ef06ec6f70a/drf_spectacular-0.29.0.tar.gz"
    sha256 "0a069339ea390ce7f14a75e8b5af4a0860a46e833fd4af027411a3e94fc1a0cc"
  end

  resource "drf-spectacular-sidecar" do
    url "https://files.pythonhosted.org/packages/c3/e4/99cd1b1c8c69788bd6cb6a2459674f8c75728e79df23ac7beddd094bf805/drf_spectacular_sidecar-2025.10.1.tar.gz"
    sha256 "506a5a21ce1ad7211c28acb4e2112e213f6dc095a2052ee6ed6db1ffe8eb5a7b"
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
    url "https://files.pythonhosted.org/packages/58/46/0028a82567109b5ef6e4d2a1f04a583fb513e6cf9527fcdd09afd817deeb/filelock-3.20.0.tar.gz"
    sha256 "711e943b4ec6be42e1d4e6690b48dc175c822967466bb31c0c293f34334c13f4"
  end

  resource "flower" do
    url "https://files.pythonhosted.org/packages/09/a1/357f1b5d8946deafdcfdd604f51baae9de10aafa2908d0b7322597155f92/flower-2.0.1.tar.gz"
    sha256 "5ab717b979530770c16afb48b50d2a98d23c3e9fe39851dcf6bc4d01845a02a0"
  end

  resource "gotenberg-client" do
    url "https://files.pythonhosted.org/packages/61/6d/07ea213c146bbe91dffebff2d8f4dc61e7076d3dd34d4fd1467f9163e752/gotenberg_client-0.12.0.tar.gz"
    sha256 "1ab50878024469fc003c414ee9810ceeb00d4d7d7c36bd2fb75318fbff139e9b"
  end

  resource "granian" do
    url "https://files.pythonhosted.org/packages/ea/1e/0a33c4b68b054b9d5f7963371dd06978da5f4f58f58ddcb77854018abfdb/granian-2.6.0.tar.gz"
    sha256 "d9b773633e411c7bf51590704e608e757dab09cd452fb18971a50a7d7c439677"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "h2" do
    url "https://files.pythonhosted.org/packages/1d/17/afa56379f94ad0fe8defd37d6eb3f89a25404ffc71d4d848893d270325fc/h2-4.3.0.tar.gz"
    sha256 "6c59efe4323fa18b47a632221a1888bd7fde6249819beda254aeca909f221bf1"
  end

  resource "hiredis" do
    url "https://files.pythonhosted.org/packages/65/82/d2817ce0653628e0a0cb128533f6af0dd6318a49f3f3a6a7bd1f2f2154af/hiredis-3.3.0.tar.gz"
    sha256 "105596aad9249634361815c574351f1bd50455dc23b537c2940066c4a9dea685"
  end

  resource "hpack" do
    url "https://files.pythonhosted.org/packages/2c/48/71de9ed269fdae9c8057e5a4c0aa7402e8bb16f2c6e90b3aa53327b113f8/hpack-4.1.0.tar.gz"
    sha256 "ec5eca154f7056aa06f196a557655c5b009b382873ac8d1e66e79e87535f1dca"
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
    url "https://files.pythonhosted.org/packages/2f/07/db4ad128da3926be22eec586aa87dafd8840c9eb03fe88505fbed016b5c6/httpx_oauth-0.16.1.tar.gz"
    sha256 "7402f061f860abc092ea4f5c90acfc576a40bbb79633c1d2920f1ca282c296ee"
  end

  resource "humanize" do
    url "https://files.pythonhosted.org/packages/b6/43/50033d25ad96a7f3845f40999b4778f753c3901a11808a584fed7c00d9f5/humanize-4.14.0.tar.gz"
    sha256 "2fa092705ea640d605c435b1ca82b2866a1b601cdf96f076d70b79a855eba90d"
  end

  resource "hyperframe" do
    url "https://files.pythonhosted.org/packages/02/e7/94f8232d4a74cc99514c13a9f995811485a6903d48e5d952771ef6322e30/hyperframe-6.1.0.tar.gz"
    sha256 "f630908a00854a7adeabd6382b43923a4c4cd4b821fcb527e6ab9e15382a3b08"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "imap-tools" do
    url "https://files.pythonhosted.org/packages/b0/76/2d74bf4702d7d9fb2dd056e058929961a05389be47b990f3275e8596012e/imap_tools-1.11.0.tar.gz"
    sha256 "77b055d301f24e668ff54ad50cc32a36d1579c6aa9b26e5fb6501fb622feb6ea"
  end

  resource "img2pdf" do
    url "https://files.pythonhosted.org/packages/8e/97/ca44c467131b93fda82d2a2f21b738c8bcf63b5259e3b8250e928b8dd52a/img2pdf-0.6.3.tar.gz"
    sha256 "219518020f5bd242bdc46493941ea3f756f664c2e86f2454721e74353f58cd95"
  end

  resource "inflection" do
    url "https://files.pythonhosted.org/packages/e1/7e/691d061b7329bc8d54edbf0ec22fbfb2afe61facb681f9aaa9bff7a27d04/inflection-0.5.1.tar.gz"
    sha256 "1a29730d366e996aaacffb2f1f1cb9593dc38e2ddd30c91250c6dde09ea9b417"
  end

  resource "inotify-simple" do
    url "https://files.pythonhosted.org/packages/e3/5c/bfe40e15d684bc30b0073aa97c39be410a5fbef3d33cad6f0bf2012571e0/inotify_simple-2.0.1.tar.gz"
    sha256 "f010bbbd8283bd71a9f4eb2de94765804ede24bd47320b0e6ef4136e541cdc2c"
  end

  resource "inotifyrecursive" do
    url "https://files.pythonhosted.org/packages/19/3a/9ed038cb750a3ba8090869cf3ad50f5628077a936d911aee14ca83e40f6a/inotifyrecursive-0.3.5.tar.gz"
    sha256 "a2c450b317693e4538416f90eb1d7858506dafe6b8b885037bd2dd9ae2dafa1e"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/e8/5d/447af5ea094b9e4c4054f82e223ada074c552335b9b4b2d14bd9b35a67c4/joblib-1.5.2.tar.gz"
    sha256 "3faa5c39054b2f03ca547da9b2f52fde67c06240c31853f306aea97f13647b55"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/74/69/f7185de793a29082a9f3c7728268ffb31cb5095131a9c139a74078e27336/jsonschema-4.25.1.tar.gz"
    sha256 "e4a9655ce0da0c0b67a085847e00a3a51449e1157f4f75e9fb5aa545e122eb85"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "kombu" do
    url "https://files.pythonhosted.org/packages/0f/d3/5ff936d8319ac86b9c409f1501b07c426e6ad41966fedace9ef1b966e23f/kombu-5.5.4.tar.gz"
    sha256 "886600168275ebeada93b888e831352fe578168342f0d1d5833d88ba0d847363"
  end

  resource "langdetect" do
    url "https://files.pythonhosted.org/packages/0e/72/a3add0e4eec4eb9e2569554f7c70f4a3c27712f40e3284d483e88094cc0e/langdetect-1.0.9.tar.gz"
    sha256 "cbc1fef89f8d062739774bd51eda3da3274006b3661d199c2655f6b3f6d605a0"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/aa/88/262177de60548e5a2bfc46ad28232c9e9cbde697bd94132aeb80364675cb/lxml-6.0.2.tar.gz"
    sha256 "cd79f3367bd74b317dda655dc8fcfa304d9eb6e4fb06b7168c5cf27f96e0cd62"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/4d/f2/bfb55a6236ed8725a96b0aa3acbd0ec17588e6a2c3b62a93eb513ed8783f/msgpack-1.1.2.tar.gz"
    sha256 "3b60763c1373dd60f398488069bcdc703cd08a711477b5d480eecc9f9626f47e"
  end

  resource "nltk" do
    url "https://files.pythonhosted.org/packages/f9/76/3a5e4312c19a028770f86fd7c058cf9f4ec4321c6cf7526bab998a5b683c/nltk-3.9.2.tar.gz"
    sha256 "0f409e9b069ca4177c1903c3e843eef90c7e92992fa4931ae607da6de49e1419"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/0b/5f/19930f824ffeb0ad4372da4812c50edbd1434f678c90c2733e1188edfc63/oauthlib-3.3.1.tar.gz"
    sha256 "0f0f8aa759826a193cf66c12ea1af1637f87b9b4622d46e866952bb022e538c9"
  end

  resource "ocrmypdf" do
    url "https://files.pythonhosted.org/packages/2b/ed/dacc0f189e4fcefc52d709e9961929e3f622a85efa5ae47c9d9663d75cab/ocrmypdf-16.12.0.tar.gz"
    sha256 "a0f6509e7780b286391f8847fae1811d2b157b14283ad74a2431d6755c5c0ed0"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/a1/d4/1fc4078c65507b51b96ca8f8c3ba19e6a61c8253c72794544580a7b6c24d/packaging-25.0.tar.gz"
    sha256 "d443872c98d677bf60f6a1f2f8c1cb748e8fe762d2bf9d3148b5599295b0fc4f"
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
    url "https://files.pythonhosted.org/packages/1d/50/5315f381a25dc80a8d2ea7c62d9a28c0137f10ccc263623a0db8b49fcced/pdfminer_six-20251107.tar.gz"
    sha256 "5fb0c553799c591777f22c0c72b77fc2522d7d10c70654e25f4c5f1fd996e008"
  end

  resource "pi-heif" do
    url "https://files.pythonhosted.org/packages/bf/7b/7c7b2aeb4995906725f13b885884d5b22e4f2d55028e8941555d2789e5e7/pi_heif-1.1.1.tar.gz"
    sha256 "42ece7c3b40569f295fd4d2b10f38d1cd5012ca548446a2ca33895f0d6900c4f"
  end

  resource "pikepdf" do
    url "https://files.pythonhosted.org/packages/f7/79/9a63d5ccac66ace679cf93c84894db15074fe849d41cd39232cb09ec8819/pikepdf-10.0.2.tar.gz"
    sha256 "7c85a2526253e35575edb2e28cdc740d004be4b7c5fda954f0e721ee1c423a52"
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
    url "https://files.pythonhosted.org/packages/23/53/3edb5d68ecf6b38fcbcc1ad28391117d2a322d9a1a3eff04bfdb184d8c3b/prometheus_client-0.23.1.tar.gz"
    sha256 "6ae8f9081eaaaf153a2e959d2e6c4f4fb57b12ef76c8c7980202f1e57b48b2ce"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/a1/96/06e01a7b38dce6fe1db213e061a4602dd6032a8a97ef6c1a862537732421/prompt_toolkit-3.0.52.tar.gz"
    sha256 "28cde192929c8e7321de85de1ddbe736f1375148b02f2e17edd840042b1be855"
  end

  resource "psycopg-c" do
    url "https://files.pythonhosted.org/packages/68/27/33699874745d7bb195e78fd0a97349908b64d3ec5fea7b8e5e52f56df04c/psycopg_c-3.2.12.tar.gz"
    sha256 "1c80042067d5df90d184c6fbd58661350b3620f99d87a01c882953c4d5dfa52b"
  end

  resource "psycopg-pool" do
    url "https://files.pythonhosted.org/packages/56/9a/9470d013d0d50af0da9c4251614aeb3c1823635cab3edc211e3839db0bcf/psycopg_pool-3.3.0.tar.gz"
    sha256 "fa115eb2860bd88fce1717d75611f41490dec6135efb619611142b24da3f6db5"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/e7/46/bd74733ff231675599650d3e47f361794b22ef3e3770998dda30d3b63726/pyjwt-2.10.1.tar.gz"
    sha256 "3cc5772eb20009233caf06e9d8a0577824723b44e6648ee0a2aedb6cf9381953"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/f0/26/19cadc79a718c5edbec86fd4919a6b6d3f681039a2f6d66d14be94e75fb9/python_dotenv-1.2.1.tar.gz"
    sha256 "42667e897e16ab0d66954af0e60a9caa94f0fd4ecf3aaf6d2d260eec1aa36ad6"
  end

  resource "python-gnupg" do
    url "https://files.pythonhosted.org/packages/42/d0/72a14a79f26c6119b281f6ccc475a787432ef155560278e60df97ce68a86/python-gnupg-0.5.5.tar.gz"
    sha256 "3fdcaf76f60a1b948ff8e37dc398d03cf9ce7427065d583082b92da7a4ff5a63"
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
    url "https://files.pythonhosted.org/packages/f8/bf/abbd3cdfb8fbc7fb3d4d38d320f2441b1e7cbe29be4f23797b4a2b5d8aac/pytz-2025.2.tar.gz"
    sha256 "360b9e3dbb49a209c21ad61809c7fb453643e048b38924c765813546746e81c3"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "pyzbar" do
    url "https://files.pythonhosted.org/packages/6d/24/81ebe6a1c00760471a3028a23cbe0b94e5fa2926e5ba47adc895920887bc/pyzbar-0.1.9-py2.py3-none-any.whl"
    sha256 "4559628b8192feb25766d954b36a3753baaf5c97c03135aec7e4a026036b475d"
  end

  resource "qrcode" do
    url "https://files.pythonhosted.org/packages/8f/b2/7fc2931bfae0af02d5f53b174e9cf701adbb35f39d69c2af63d4a39f81a9/qrcode-8.2.tar.gz"
    sha256 "35c3f2a4172b33136ab9f6b3ef1c00260dd2f66f858f24d88418a015f446506c"
  end

  resource "rapidfuzz" do
    url "https://files.pythonhosted.org/packages/d3/28/9d808fe62375b9aab5ba92fa9b29371297b067c2790b2d7cda648b1e2f8d/rapidfuzz-3.14.3.tar.gz"
    sha256 "2491937177868bc4b1e469087601d53f925e8d270ccc21e07404b4b5814b7b5f"
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
    url "https://files.pythonhosted.org/packages/cc/a9/546676f25e573a4cf00fe8e119b78a37b6a8fe2dc95cda877b30889c9c45/regex-2025.11.3.tar.gz"
    sha256 "1fedc720f9bb2494ce31a58a1631f9c82df6a09b49c19517ea5cc280b4541e01"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/fb/d2/8920e102050a0de7bfabeb4c4614a49248cf8d5d7a8d01885fbb24dc767a/rich-14.2.0.tar.gz"
    sha256 "73ff50c7c0c1c77c8243079283f4edb376f0f6442433aecb8ce7e6d0b92d1fe4"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/20/af/3f2f423103f1113b36230496629986e0ef7e199d2aa8392452b484b38ced/rpds_py-0.30.0.tar.gz"
    sha256 "dd8ff7cf90014af0c0f787eea34794ebf6415242ee1d6fa91eaba725cc441e84"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/98/c2/a7855e41c9d285dfe86dc50b250978105dce513d6e459ea66a6aeb0e1e0c/scikit_learn-1.7.2.tar.gz"
    sha256 "20e9e49ecd130598f1ca38a1d85090e1a600147b9c02fa6f15d69cb53d968fda"
  end

  resource "setproctitle" do
    url "https://files.pythonhosted.org/packages/8d/48/49393a96a2eef1ab418b17475fb92b8fcfad83d099e678751b05472e69de/setproctitle-1.3.7.tar.gz"
    sha256 "bc2bc917691c1537d5b9bca1468437176809c7e11e5694ca79a9ca12345dcb9e"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "sqlparse" do
    url "https://files.pythonhosted.org/packages/18/67/701f86b28d63b2086de47c942eccf8ca2208b3be69715a1119a4e384415a/sqlparse-0.5.4.tar.gz"
    sha256 "4396a7d3cf1cd679c1be976cf3dc6e0a51d0111e87787e7a8d780e7d5a998f9e"
  end

  resource "threadpoolctl" do
    url "https://files.pythonhosted.org/packages/b7/4d/08c89e34946fce2aec4fbb45c9016efd5f4d7f24af8e5d93296e935631d8/threadpoolctl-3.6.0.tar.gz"
    sha256 "8ab8b4aa3491d812b623328249fab5302a68d2d71745c8a4c719a2fcaba9f44e"
  end

  resource "tika-client" do
    url "https://files.pythonhosted.org/packages/21/be/65bfc47e4689ecd5ead20cf47dc0084fd767b7e71e8cfabf5fddc42aae3c/tika_client-0.10.0.tar.gz"
    sha256 "3101e8b2482ae4cb7f87be13ada970ff691bdc3404d94cd52f5e57a09c99370c"
  end

  resource "tornado" do
    url "https://files.pythonhosted.org/packages/7f/2e/3d22d478f27cb4b41edd4db7f10cd7846d0a28ea443342de3dba97035166/tornado-6.5.3.tar.gz"
    sha256 "16abdeb0211796ffc73765bc0a20119712d68afeeaf93d1a3f2edf6b3aee8d5a"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
    sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/95/32/1a225d6164441be760d75c2c42e2780dc0873fe382da3e98a2e1e48361e5/tzdata-2025.2.tar.gz"
    sha256 "b60a638fcc0daffadf82fe0f57e53d06bdec2f36c4df66280ae79bce6bd6f2b9"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/8b/2e/c14812d3d4d9cd1773c6be938f89e5735a1f11a9f184ac3639b93cef35d5/tzlocal-5.3.1.tar.gz"
    sha256 "cceffc7edecefea1f595541dbd6e990cb1ea3d19bf01b2809f362a03dd7921fd"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/98/60/f174043244c5306c9988380d2cb10009f91563fc4b31293d27e17201af56/uritemplate-4.2.0.tar.gz"
    sha256 "480c2ed180878955863323eea31b0ede668795de182617fef9c6ca09e6ec9d0e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/1e/24/a2a2ed9addd907787d7aa0355ba36a6cadf1768b934c652ea78acbd59dcd/urllib3-2.6.2.tar.gz"
    sha256 "016f9c98bb7e98085cb2b4b17b87d2c702975664e4f060c6532e64d1c1a5e797"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/06/f0/18d39dbd1971d6d62c4629cc7fa67f74821b0dc1f5a77af43719de7936a7/uvloop-0.22.1.tar.gz"
    sha256 "6c84bae345b9147082b17371e3dd5d42775bddce91f885499017f4607fdaf39f"
  end

  resource "vine" do
    url "https://files.pythonhosted.org/packages/bd/e4/d07b5f29d283596b9727dd5275ccbceb63c44a1a82aa9e4bfd20426762ac/vine-5.1.0.tar.gz"
    sha256 "8b62e981d35c41049211cf62a0a1242d8c1ee9bd15bb196ce38aefd6799e61e0"
  end

  resource "watchdog" do
    url "https://files.pythonhosted.org/packages/db/7d/7f3d619e951c88ed75c6037b246ddcf2d322812ee8ea189be89511721d54/watchdog-6.0.0.tar.gz"
    sha256 "9ddf7c82fda3ae8e24decda1338ede66e1c99883db93711d8fb941eaa2d8c282"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/24/30/6b0809f4510673dc723187aeaf24c7f5459922d01e2f794277a3dfb90345/wcwidth-0.2.14.tar.gz"
    sha256 "4d478375d31bc5395a3c55c40ccdf3354688364cd61c4f6adacaa9215d0b3605"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "whitenoise" do
    url "https://files.pythonhosted.org/packages/15/95/8c81ec6b6ebcbf8aca2de7603070ccf37dbb873b03f20708e0f7c1664bc6/whitenoise-6.11.0.tar.gz"
    sha256 "0f5bfce6061ae6611cd9396a8231e088722e4fc67bc13a111be74c738d99375f"
  end

  resource "whoosh-reloaded" do
    url "https://files.pythonhosted.org/packages/17/51/3fb4b9fdeaaf96512514ccf2871186333ce41a0de2ea48236a4056a5f6af/Whoosh-Reloaded-2.7.5.tar.gz"
    sha256 "39ed7dfbd1fec97af33933107bdf78110728375ed0f2abb25dec6dbfdcb279d8"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/49/2a/6de8a50cb435b7f42c46126cf1a54b2aab81784e74c8595c8e025e8f36d3/wrapt-2.0.1.tar.gz"
    sha256 "9c9c635e78497cacb81e84f8b11b23e0aacac7a136e73b8e5b2109a1d9fc468f"
  end

  resource "zstandard" do
    url "https://files.pythonhosted.org/packages/fd/aa/3e0508d5a5dd96529cdc5a97011299056e14c6505b678fd58938792794b1/zstandard-0.25.0.tar.gz"
    sha256 "7713e1179d162cf5c7906da876ec2ccb9c3a9dcbdffef0cc7f70c3667a205f0b"
  end

  resource "zxing-cpp" do
    url "https://files.pythonhosted.org/packages/d9/f2/b781bf6119abe665069777e3c0f154752cf924fe8a55fca027243abbc555/zxing_cpp-2.3.0.tar.gz"
    sha256 "3babedb67a4c15c9de2c2b4c42d70af83a6c85780c1b2d9803ac64c6ae69f14e"
  end

  def install
    # build frontend
    system "pnpm", "--dir", "src-ui", "install"
    chdir "src-ui" do
      with_env(CYPRESS_INSTALL_BINARY: "0", NG_CLI_ANALYTICS: "false") do
        system "ng", "build", "--configuration", "production"
      end
    end

    # build backend
    venv = virtualenv_install_with_resources without: ["zxing-cpp"]
    python_executable = venv.root/"bin/python"
    manage_py_script = venv.site_packages/"manage.py"
    celery_executable = venv.root/"bin/celery"
    granian_executable = venv.root/"bin/granian"
    # set MACOSX_DEPLOYMENT_TARGET only for zxing-cpp to avoid
    # `invalid deployment target` error
    ENV["MACOSX_DEPLOYMENT_TARGET"] = MacOS.version if OS.mac?
    venv.pip_install resource("zxing-cpp")

    # download NLTK data
    %w[snowball_data stopwords punkt_tab].each do |nltk_data|
      system python_executable,
         "-W", "ignore::RuntimeWarning",
         "-m", "nltk.downloader",
         "-d", libexec/"nltk_data",
         nltk_data
    end

    static_dir = libexec/"static"
    chdir "src" do
      with_env(PAPERLESS_STATICDIR: static_dir) do
        system python_executable, "manage.py", "collectstatic", "--clear", "--no-input"
        system python_executable, "manage.py", "compilemessages"
      end
    end

    # frontend static files
    mkdir_p (static_dir/"frontend")
    (static_dir/"frontend").install Dir["src/documents/static/frontend/*"]

    # templates
    (venv.site_packages/"templates").install Dir["src/documents/templates/*"]
    inreplace venv.site_packages/"paperless/settings.py",
          '"DIRS": []',
          '"DIRS": [os.path.join(BASE_DIR, \'templates\')]'

    # The default value for PAPERLESS_CONSUMER_POLLING is 0 which means
    # using inotify. This is not available on macOS, so we set it to a
    # non-zero value which disables inotify.
    # `AttributeError: dlsym(0x3173ca988, inotify_init1): symbol not found`
    #
    # Set OMP_NUM_THREADS to 1 on macOS because of
    #  https://github.com/NixOS/nixpkgs/issues/240591
    #  https://github.com/NixOS/nixpkgs/pull/299008
    (buildpath/"paperless.conf").write <<~SH
      PAPERLESS_CONFIGURATION_PATH="#{etc}/paperless-ngx/paperless.conf"
      PAPERLESS_CONSUMPTION_DIR="#{var}/paperless-ngx/consume"
      PAPERLESS_DATA_DIR="#{var}/paperless-ngx/data"
      PAPERLESS_MEDIA_ROOT="#{var}/paperless-ngx/media"
      PAPERLESS_NLTK_DIR="#{opt_libexec}/nltk_data"
      PAPERLESS_STATICDIR="#{opt_libexec}/static"
      GRANIAN_WORKERS_KILL_TIMEOUT="60"
      #{"PAPERLESS_CONSUMER_POLLING=10" if OS.mac?}
      #{"OMP_NUM_THREADS=1" if OS.mac?}
    SH
    (etc/"paperless-ngx").install "paperless.conf"

    s6_services_dir = libexec/"s6_services"
    s6_services_dir.mkpath

    # paperless-webserver service
    webserver_dir = s6_services_dir/"paperless-webserver"
    webserver_dir.mkpath
    (webserver_dir/"run").write <<~EOS
      #!/bin/sh
      set -a
      . "#{etc}/paperless-ngx/paperless.conf"
      set +a
      export PAPERLESS_CONFIGURATION_PATH="#{etc}/paperless-ngx/paperless.conf"
      echo "Running database migrations..."
      "#{python_executable}" "#{manage_py_script}" migrate --no-input --skip-checks
      exec "#{granian_executable}" \\
        --interface asginl \\
        --host "${PAPERLESS_INTERFACE:-127.0.0.1}" \\
        --port "${PAPERLESS_PORT:-8000}" \\
        --workers "${PAPERLESS_WEBSERVER_WORKERS:-2}" \\
        --ws \\
        --loop uvloop \\
        "paperless.asgi:application"
    EOS
    (webserver_dir/"run").chmod 0755

    # paperless-consumer service
    consumer_dir = s6_services_dir/"paperless-consumer"
    consumer_dir.mkpath
    (consumer_dir/"run").write <<~EOS
      #!/bin/sh
      set -a
      . "#{etc}/paperless-ngx/paperless.conf"
      set +a
      export PAPERLESS_CONFIGURATION_PATH="#{etc}/paperless-ngx/paperless.conf"

      exec "#{python_executable}" "#{manage_py_script}" document_consumer
    EOS
    (consumer_dir/"run").chmod 0755

    # paperless-worker service
    # use `--pool threads` to prevent a crash on macOS:
    #   *** multi-threaded process forked ***
    #   crashed on child side of fork pre-exec
    # See also:
    #  - https://bugs.python.org/issue37677
    #  - https://github.com/celery/celery/pull/9810
    worker_dir = s6_services_dir/"paperless-worker"
    worker_dir.mkpath
    (worker_dir/"run").write <<~EOS
      #!/bin/sh
      set -a
      . "#{etc}/paperless-ngx/paperless.conf"
      set +a
      export PAPERLESS_CONFIGURATION_PATH="#{etc}/paperless-ngx/paperless.conf"
      export TMPDIR="#{var}/paperless-ngx/tmp"

      exec "#{celery_executable}" \\
        --app paperless \\
        worker \\
        --loglevel INFO \\
        --pool threads \\
        --without-mingle \\
        --without-gossip
    EOS
    (worker_dir/"run").chmod 0755

    # paperless-scheduler service
    scheduler_dir = s6_services_dir/"paperless-scheduler"
    scheduler_dir.mkpath
    (scheduler_dir/"run").write <<~EOS
      #!/bin/sh
      set -a
      . "#{etc}/paperless-ngx/paperless.conf"
      set +a
      export PAPERLESS_CONFIGURATION_PATH="#{etc}/paperless-ngx/paperless.conf"
      exec "#{celery_executable}" \\
        --app paperless \\
        beat \\
        --loglevel INFO
    EOS
    (scheduler_dir/"run").chmod 0755

    # manage.py wrapper
    (buildpath/"paperless-manage").write <<~SH
      #!/usr/bin/env sh
      export PAPERLESS_CONFIGURATION_PATH="#{etc}/paperless-ngx/paperless.conf"
      exec "#{python_executable}" "#{manage_py_script}" "$@"
    SH
    bin.install "paperless-manage"
    (bin/"paperless-manage").chmod 0755
  end

  def post_install
    mkdir_p (var/"paperless-ngx/.gnupg")
    mkdir_p (var/"paperless-ngx/consume")
    mkdir_p (var/"paperless-ngx/data")
    mkdir_p (var/"paperless-ngx/export")
    mkdir_p (var/"paperless-ngx/media")
    mkdir_p (var/"paperless-ngx/nltk_data")
    mkdir_p (var/"paperless-ngx/tmp")
  end

  service do
    run [HOMEBREW_PREFIX/"bin/s6-svscan", opt_libexec/"s6_services"]
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
    ENV["PAPERLESS_MEDIA_ROOT"] = testpath/"media"
    ENV["PAPERLESS_CONSUMPTION_DIR"] = testpath/"consume"
    ENV["GRANIAN_HOST"] = "127.0.0.1"
    ENV["GRANIAN_PORT"] = port.to_s
    pid = nil
    begin
      output_log = testpath/"output.log"
      pid = spawn(
        opt_libexec/"bin/granian",
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
end
