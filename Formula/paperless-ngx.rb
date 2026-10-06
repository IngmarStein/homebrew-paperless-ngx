class PaperlessNgx < Formula
  include Language::Python::Virtualenv

  desc "Scan, index and archive all your physical documents"
  homepage "https://docs.paperless-ngx.com/"
  url "https://github.com/paperless-ngx/paperless-ngx/releases/download/v3.3.0/paperless-ngx-v3.3.0.tar.xz"
  sha256 "3332b18d914a26e225d47c0fae4680ffd7db80bdaee6a337d010619a98d75502"
  license "GPL-3.0-or-later"

  livecheck do
    url "https://github.com/paperless-ngx/paperless-ngx/releases/latest"
    strategy :github_releases
  end

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 cellar: :any, arm64_tahoe:  "62eedc41ad8f5b4749814eef1f715849c83a74a8da7b11ef9bb711577c394765"
    sha256 cellar: :any, x86_64_linux: "ff37730a3efe3c00b87a0d9dd74e56616bfa068cdfc2c3e17d8625e446371c76"
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

  # psycopg-c: breaks `brew update-python-resources` (which can't find pg_config),
  # hence a manual addition at the end of the file using `send` to prevent it from being removed.
  pypi_packages exclude_packages: %w[
                  certifi cffi click cryptography granian joblib
                  numpy pillow pycparser psycopg-c pydantic
                  pydantic-core scikit-learn scipy sqlite-vec
                  threadpoolctl torch uvloop
                ],
                extra_packages:   %w[filelock fsspec jinja2 markupsafe mpmath
                                     narwhals networkx psycopg-pool psycopg
                                     sympy typing-extensions]

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
    url "https://files.pythonhosted.org/packages/b2/a7/787f067b237d4b3bfefa8d67ead64a7d807feafe85ad516afb284fb1587f/amqp-5.4.0.tar.gz"
    sha256 "aaa33987dcb6a7893955d3b4f537c5d4755addce1009929e63e5d18c1b51a0a7"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "c7e58ce09192557605d8bbd92836d7e1d520ac9580096042c0bfd197efacf1bb"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/d2/f4d173e22df740bc37b1db102b386ba719b66e95b0f0d751f556b387e6d2/anyio-4.15.1.tar.gz"
    sha256 "9f28306018cbd6d329e64a36d58256edff76dd996fe423bc957326e578b82a94"
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
    url "https://files.pythonhosted.org/packages/f0/92/0449c32e718c10e4af40a3e040c830a77cdaeec6e9066622ee60e4c93e6e/banks-2.5.1.tar.gz"
    sha256 "a7ca5c250b605ae90cfd6e4ca5dd6ce2ee377d5d59021b6feba44e345910026d"
  end

  resource "billiard" do
    url "https://files.pythonhosted.org/packages/ea/0d/8921e960be19fa226358bf933509f57ec679d9b35a1e7ea43460af4b7fef/billiard-4.3.1.tar.gz"
    sha256 "c88559b306ee5dc93f8d5f843d07da15d795d67af26720d14ee9d09f09eb0b22"
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
    url "https://files.pythonhosted.org/packages/33/1c/f41d4e74c28ab327ff3acd36053f7ea506c55872d7a90b0fa71aa3ab0c89/charset_normalizer-3.5.2.tar.gz"
    sha256 "39de2a259fc954455c57274dc94c79d5842774e1247a016aff30bc0efed0f4ef"
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
    url "https://files.pythonhosted.org/packages/28/50/bea78619ff1fc0fbd61882f64a1302a8abb2ea0b3db92907042d0e362df2/click_repl-0.4.1.tar.gz"
    sha256 "c32a1cf6f95e5bd6e92076f81ce24eafd33f2f0ffb0135887e335b8e446d1c0b"
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
    url "https://files.pythonhosted.org/packages/c7/5d/bd21ba1519b6b1e222b29878301d2e1fb928e890dc7d085fa4222ac5671b/dateparser-1.4.3.tar.gz"
    sha256 "bab8c43a746266e68142f4926e69438ce551441aa88e54e78bb6410bf3ee7000"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
    sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
  end

  resource "deprecated" do
    url "https://files.pythonhosted.org/packages/f7/9c/16649913bf14c73e0a9453782e148362ff2657067deff6aa9c7ebcddcc31/deprecated-3.0.0.tar.gz"
    sha256 "16850204d3a1e6bb0acd06bff48d96e8b0a0d25d1c52f71705405a0f4894192d"
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
    url "https://files.pythonhosted.org/packages/07/ee/c0f950fe24f3e0b69d054ad957f9229632b50bdc78e968f966d8b4efe16a/django_filter-26.2.tar.gz"
    sha256 "fd5cc83995fbe9f5f07fb5dcda16fde0f04de1ecf8ef82628b6c0ec921b751af"
  end

  resource "django-guardian" do
    url "https://files.pythonhosted.org/packages/63/36/0d3eb841f9d6404fc74fdbc3b4d74b9217a0fcede406ab26cc9840506bf5/django_guardian-3.5.0.tar.gz"
    sha256 "d80b8ab86c28f92adef816996f4341fbea6790aa1f09006c5afc1ef0ea394871"
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
    url "https://files.pythonhosted.org/packages/8a/2e/b3ce9d449b1ed9f9dd74fb7dfbc5f20860d5f40c2b4b10a2c3eabd8ff579/djangorestframework-3.18.1.tar.gz"
    sha256 "605d79fa2ec2f02905492e5ea13d903c2d842d0b4c915a57f7bf02ab9f3c91dd"
  end

  resource "drf-spectacular" do
    url "https://files.pythonhosted.org/packages/50/43/41d25039a6a53545420ebc98eb9f877ec9fe30c7bd03fefabcaf9b953af7/drf_spectacular-0.30.0.tar.gz"
    sha256 "53e79e7ba00e240441b63c32273754a5368e4c2ab44a19f2595277cc1cd559c9"
  end

  resource "drf-spectacular-sidecar" do
    url "https://files.pythonhosted.org/packages/67/87/ef9f1693499ac2c1bf3c33ce57e72c423aed51ab51f7ebd5d3a38f20c606/drf_spectacular_sidecar-2026.9.1.tar.gz"
    sha256 "99c2b845d0a52b01a7a8e96736a48ef2099dc3dedea103012dfea41a9e4e9ecc"
  end

  resource "drf-writable-nested" do
    url "https://files.pythonhosted.org/packages/e8/57/df87d92fbfc3f0f2ef1a49c47f2a83389a4a13b7acf62b8bf7b223627d82/drf_writable_nested-0.7.2-py3-none-any.whl"
    sha256 "4a3d2737c1cbfafa690e30236b169112e5b23cfe3d288f3992b0651a1b828c4d"
  end

  resource "fido2" do
    url "https://files.pythonhosted.org/packages/ba/ea/6f08c354b7aeb8019249d46a86c2153f8218499cced4d21bf16b6d49fc16/fido2-2.2.1.tar.gz"
    sha256 "85787428a94c3f8eaf72f0ff30afba983b559a1b1b795c93318c81b4ad4062c4"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/0f/59/e19834834cb01a32febfbb0f8a23a9088088f5d45991824ff2bc3b5e8acb/filelock-3.32.7.tar.gz"
    sha256 "37b8a3d9811b0f9aef7e5ec5c71bb320de52df51e6ca9bcd6f5ad81187660da7"
  end

  resource "filetype" do
    url "https://files.pythonhosted.org/packages/bb/29/745f7d30d47fe0f251d3ad3dc2978a23141917661998763bebb6da007eb1/filetype-1.2.0.tar.gz"
    sha256 "66b56cd6474bf41d8c54660347d37afcc3f7d1970648de365c102ef77548aadb"
  end

  resource "flower" do
    url "https://files.pythonhosted.org/packages/a6/f9/3474dea8439722ff59804caba62532d08f147a2ffdf8cd8c8773e4b43faa/flower-2.2.0.tar.gz"
    sha256 "c4f4751942ff8b5069e6604a136e073b860971b7658859bdc61da1dc17a4bb32"
  end

  resource "fonttools" do
    url "https://files.pythonhosted.org/packages/87/b6/126c659ab7e0e03e01a5f5d223abf7b2c0691ae92718085a212a3924a2a3/fonttools-4.66.1.tar.gz"
    sha256 "64967c6ddb0d4c610dfd8cb1485981b2d27972ddfb7d4bbbd9e199d2a089c450"
  end

  resource "fpdf2" do
    url "https://files.pythonhosted.org/packages/12/23/84dbe637708c2690972eff5df233a7c9f8d4bde809f714839dc1b08f5e5e/fpdf2-2.8.9.tar.gz"
    sha256 "5b0b3786f5236a2b3cc83c1fee567df17ddd314f8c4e13d820d8f09b617ab4f0"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2d/f5/c831fac6cc817d26fd54c7eaccd04ef7e0288806943f7cc5bbf69f3ac1f0/frozenlist-1.8.0.tar.gz"
    sha256 "3ede829ed8d842f6cd48fc7081d7a41001a56f1f38603f9d49bf3020d59a31ad"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/77/cd/9be253869fc42e764de7f3dedd6969af7d44ff9c3375214a3442a6f3fc08/fsspec-2026.9.0.tar.gz"
    sha256 "0f08147951c8cb31d844c3547d631053b127863b60be04cf06e121333ee0e2fe"
  end

  resource "gotenberg-client" do
    url "https://files.pythonhosted.org/packages/68/a3/48b438bded1a514289b8b92fa5f29077712702cda8c01f923b930f80cff8/gotenberg_client-1.0.0.tar.gz"
    sha256 "871b339ed98911279f94f3aaa6403ca7c59aaa695d8663249be6314ccd46719c"
  end

  resource "greenlet" do
    url "https://files.pythonhosted.org/packages/3e/6e/0091f175ccd02b02bc8811bbcbcc6ac2e980be116e3b2f7a736ca322bf84/greenlet-3.5.6.tar.gz"
    sha256 "8e67c43bdfc88d5fee6db0d3e40175b362fc95fb85f0412d233b9b203c53a575"
  end

  resource "griffe" do
    url "https://files.pythonhosted.org/packages/d5/03/75ca4d08a7eff164292d42cf72c7c510423b3414e66205f0ba5b35ad3034/griffe-2.3.0.tar.gz"
    sha256 "aa5634c0d7802583ecd29a7fe335c02d462ffdf5ce8f51426a3d326f374e6d93"
  end

  resource "griffecli" do
    url "https://files.pythonhosted.org/packages/5c/15/f70539f7efb44f27d209b43e386b1a5397bd476879ff19a206b75454f58e/griffecli-2.3.0.tar.gz"
    sha256 "916fdc851cf51d38e9b5ab82550305df45e5981d5dfe65d346544464abedb3ec"
  end

  resource "griffelib" do
    url "https://files.pythonhosted.org/packages/27/af/018c10bc9edd42b6ef6db2e96b09542050d5253f9b195e74bc910b2d13ab/griffelib-2.3.0.tar.gz"
    sha256 "7b0952caf5bca6afa4bb5ee8c6a2d183fe3f21b62efc5f6c7243cb2b26d2d115"
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
    url "https://files.pythonhosted.org/packages/38/da/41b341ebed1eb6f1074112936af98bb52880724737887ae9bade9d7ce107/hiredis-3.4.2.tar.gz"
    sha256 "9a566dc70e9dd84be3550babc56a8e109bb65cafcac635aea027fa425196a7d7"
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
    url "https://files.pythonhosted.org/packages/25/2a/484d112c0d8fc5f665d7b65137ac9cdb2953c982391598c3597968a12ee7/huggingface_hub-1.33.0.tar.gz"
    sha256 "367be21a201db9523eddf8aeac7048f2602c1b308691c97640d5e72ed188007e"
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
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "ijson" do
    url "https://files.pythonhosted.org/packages/3a/06/b31f040a8764336a11152e474a7abcb3782fedb0d1cdf78f442b82878c56/ijson-3.5.1.tar.gz"
    sha256 "af40bd1a85f55db0b8b30715c858761306bd92d5590148636f75c3309e6e76bd"
  end

  resource "imap-tools" do
    url "https://files.pythonhosted.org/packages/59/4e/acf9a7d59932548bc749fe0f5ae852e6da00b640303ed72786f697944b69/imap_tools-1.15.0.tar.gz"
    sha256 "a90f948549ab000d96caf17c90e63b114f8788ba4a0d3f9274a96c0e108c3805"
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
    url "https://files.pythonhosted.org/packages/9c/1f/8176d92e001f86505424b41664032ae26a882bc9ca41a32c803f373f9195/jiter-0.17.0.tar.gz"
    sha256 "03e432f226a453851079fb84cd17c6da9991eab723e28d716f14ae3d906e0c12"
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
    url "https://files.pythonhosted.org/packages/d8/70/fe1f0a92459c3692075875c1e09fc51494602daaeb71734045e1d9d815d3/llama_index_core-0.14.25.tar.gz"
    sha256 "4ebfdc5317f0382501fa80262d7a7382715f80741cf41a7b11a52d4335e6f696"
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
    url "https://files.pythonhosted.org/packages/7a/74/b1a9109331d479bb9023b00e7ae759f34b735b495b3f040fb19fb8f25dee/llama_index_llms_openai-0.8.2.tar.gz"
    sha256 "366a03e14e724707f1c729f15ea67748c16a4ab812a3f18479ed287918de34c8"
  end

  resource "llama-index-llms-openai-like" do
    url "https://files.pythonhosted.org/packages/ce/3d/d76273f6a63f3c316ac22c2993240ec95af001b0deb8a3972bc1c92330f4/llama_index_llms_openai_like-0.8.1.tar.gz"
    sha256 "1b6f973bba97cb4ce6c71feb54c2fa6834a071ec1c4b26636dc603b818d07b0b"
  end

  resource "llama-index-workflows" do
    url "https://files.pythonhosted.org/packages/d3/a1/25a68cfae038f3ecf13448f850b38b66e259ac3eefcafdc2e106a661608c/llama_index_workflows-2.25.0.tar.gz"
    sha256 "f1a6a90ccc2b818e3fdb0f9660deb34019b0c3f53533e9cecb3540882b527f49"
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
    url "https://files.pythonhosted.org/packages/38/9b/e422a865e1d5d57d0e509b4e0bf1c1a70a7f6382c29a5aa428df994c8bc8/markupsafe-3.0.4.tar.gz"
    sha256 "2e9ad7dd851bf45fab9f75cbff4cb493fee9979e8d8c7c9c3ee119022518edd6"
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
    url "https://files.pythonhosted.org/packages/0a/e7/bb605a7bab2d8425a64b3fa762b39dc1bf1c7e3f11ba6fb5413d6db0ff8c/msgpack-1.2.3.tar.gz"
    sha256 "32edb81a2b5eb7cd7c9d941b2bfbbb082fd2cd09e0e725930316af6b708db186"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/d6/99/1d4d69c3512d0ddbfa3a1b69cfd9a151012ab2eb4eabbb096201b1f0b7d8/multidict-6.9.1.tar.gz"
    sha256 "0f06e60fa190aa7abd0914c2a766736fdc8e9f34878c4346338534b73d1b20e2"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/a2/6e/371856a3fb9d31ca8dac321cda606860fa4548858c0cc45d9d1d4ca2628b/mypy_extensions-1.1.0.tar.gz"
    sha256 "52e68efc3284861e772bbcd66823fde5ae21fd2fdb51c62a211403730b916558"
  end

  resource "narwhals" do
    url "https://files.pythonhosted.org/packages/35/68/5351e34623d253423240ea7de3f8fc74fa8ab14b1ab3c0ec4ac8997413c9/narwhals-2.26.0.tar.gz"
    sha256 "6b9cadca82f375c7e4cf584fdc86ca25da54827307a9c58f94547ee6104b82dd"
  end

  resource "nest-asyncio" do
    url "https://files.pythonhosted.org/packages/83/f8/51569ac65d696c8ecbee95938f89d4abf00f47d58d48f6fbabfe8f0baefe/nest_asyncio-1.6.0.tar.gz"
    sha256 "6f172d5449aca15afd6c646851f4e31e02c598d553a667e38cafa997cfec55fe"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/dc/76/3af777226b63a5e64a6b36b1ec5855c14e2b94a37096d4760e595fc43511/networkx-3.7.tar.gz"
    sha256 "fd77a511bd90f39f3d016351345b52cf5319b813bdca01de3f755d3cca62e96a"
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
    url "https://files.pythonhosted.org/packages/37/b5/2ffe5431eb7a8e4fb620d30351e06b8f97212800d23145979c459784bea0/ocrmypdf-17.12.1.tar.gz"
    sha256 "aca73a23a80cf2f46a4c15040b0035203dbf74054b7a0c3a7ee93b05abc555a6"
  end

  resource "ollama" do
    url "https://files.pythonhosted.org/packages/b8/97/eeafe65594e4f4b25e443e068ef7d83aa3105b023e12e1c408c38669fc07/ollama-0.6.3.tar.gz"
    sha256 "41fc49a8095c4a75939c4c1f8582e4d0671692fb6eac2a5a7ede8c9872b67096"
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

  resource "pikepdf" do
    url "https://files.pythonhosted.org/packages/32/80/0fb229f1d4772f102af425975b302c9de1b177b3e191ed7f7ffe24a02e98/pikepdf-10.16.0.tar.gz"
    sha256 "d9541429f079f7838f2856fea5c2ad165885693cdb36894e73d40d1b845d2e11"
  end

  resource "pillow-heif" do
    url "https://files.pythonhosted.org/packages/bb/4c/d5319a1f276c70528ff97893afc42a300ff28029e27ca8de89bb3b271680/pillow_heif-1.8.0.tar.gz"
    sha256 "e47c27432c6fd3d66c22f0de9f27fd379383b646c947520bc485854ce72060d0"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/42/23/4a86fc741c38c5b69792a4ef954b281afa69bea9f083f881de1b0d23bc07/platformdirs-4.12.3.tar.gz"
    sha256 "427fc0bb321ae0c5b037fa03238ca74820437be162e78b4848c4d4055b9b766c"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/f9/e2/3e91f31a7d2b083fe6ef3fa267035b518369d9511ffab804f839851d2779/pluggy-1.6.0.tar.gz"
    sha256 "7dcc130b76258d33b90f61b658791dede3486c3e6bfb003ee5c9bfb396dd22f3"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/81/cd/d2a23fc80c26f539ac77e7d61bd5e4af5d0b3a09a78ac4c716eead345129/portalocker-4.4.0.tar.gz"
    sha256 "90c0df939d4ffba121f8e925bbf98ecea8b9381718666ab871a226938d2b63b2"
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
    url "https://files.pythonhosted.org/packages/b3/9a/9fbf4e4ec0c2d7f1c32519fff782ef467859b8faa9fbc5331a96f6395d43/propcache-0.5.4.tar.gz"
    sha256 "ff6b113f50bc066a698db5d944d2c6dc7507168dd3341e255a8892fd0715a558"
  end

  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/76/26/3ea4ca5eaea1c0debcdf7ee7c1613fbe721dc27a03c461c0817ffd8a0601/psycopg-3.3.6.tar.gz"
    sha256 "c081f2250df751a943036e42db6df4571c66cd0aabe8291a7a506512b12007d2"
  end

  resource "psycopg-pool" do
    url "https://files.pythonhosted.org/packages/74/5e/c0664b968b102ff68b811d999c728546c48d5c1eec03e3bbaf88c0cb4472/psycopg_pool-3.3.3.tar.gz"
    sha256 "df87b5d9d0ad7db37f6cdad4fa8ce113d250f5997f6db38e9a99192fb67f9e1d"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/43/ea/5194e52748b0da83d71e082d75496eaec6e58f419f5e184786ded517e6a9/pyjwt-2.15.1.tar.gz"
    sha256 "4f259e80cdfb6b3fc18a7de51fd1ef9ec79652f25019bae68975ca2468a34df8"
  end

  resource "pypdfium2" do
    url "https://files.pythonhosted.org/packages/95/d0/c81d3a7c2a9af37b817ace1de0acd40cf44d15f12407c5e86b3668364a5c/pypdfium2-5.14.0.tar.gz"
    sha256 "c5f009b3157f10e97dceb55963f5910eff92feb00587ba10a76f12b87ce1a4b6"
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
    url "https://files.pythonhosted.org/packages/74/26/2fbeedb218a787a5eea551c7532cac4e009f83d689dd2faa0d0353473f86/python_dotenv-1.2.4.tar.gz"
    sha256 "f0d53e69935a851c0dcc78f3ab7aaccd8cabef0b92382b576b824212902873c0"
  end

  resource "python-gnupg" do
    url "https://files.pythonhosted.org/packages/bb/d4/47aa0f34b6a06a976063e3e0bf1512b140ec1e6efda83bc717fac58071db/python_gnupg-0.5.7.tar.gz"
    sha256 "73ea46219f992b361eb1ce54cb0968101670654454916a3ee5df8bb9bf0cc8cc"
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
    url "https://files.pythonhosted.org/packages/14/21/d83d6ef28c4c912c4bb4d1dcf591f7b8c6bde87b9c66f9f454677314e16d/pytz-2026.5.tar.gz"
    sha256 "fa23724b9c486543b9ff54a327ee7569ac83ade54bb9afd0fc18676620401c86"
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
    url "https://files.pythonhosted.org/packages/0d/d6/e8b92798a5bd67d659d51a18170e91c16ac3b59738d91894651ee255ed49/redis-6.4.0.tar.gz"
    sha256 "b01bc7282b8444e28ec36b261df5375183bb47a07eb9c603f284e89cbc5ef010"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/fc/f2/af1da9d3ceed77bfcdce40427d49ba0be94e4fe84245e3bfef68c10e75b6/regex-2026.9.29.tar.gz"
    sha256 "8b5fcc4771732191b2b7d1dd68d8f0353f47f8d90b6150f6dce58bf1112442cb"
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
    url "https://files.pythonhosted.org/packages/42/68/3bd46b8a5e01d3c2ebdf9c5e9497912e3fe0cde02bac21a7130ca866e403/rpds_py-2026.9.1.tar.gz"
    sha256 "4793ef7f78268b124b73fa933440f01d258bbae01de9fa53e9080c9ab0425a12"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/45/06/f955dbbb1859e3bd23c8ac6141af5106e7ad5fedec4a3a6e3d60f94b7001/safetensors-0.8.0.tar.gz"
    sha256 "fabaf3e0f18a6618d9b36560682562157f77c2b71fcffc7b432be2baed9d753d"
  end

  resource "sentence-transformers" do
    url "https://files.pythonhosted.org/packages/c4/a1/53ae87971817e2d8370f8e79b843a881be33ab339502d71c5f82ac31f7af/sentence_transformers-6.1.0.tar.gz"
    sha256 "299025df51550dc1a38f05be27a9b0bf881c4e5e70542b3b7757d05e00aa3868"
  end

  resource "setproctitle" do
    url "https://files.pythonhosted.org/packages/49/b0/6b8a516c5a9e9630bd5293db78314ac012f690305fe93beadea388626efb/setproctitle-1.3.8.tar.gz"
    sha256 "cafe209d064a6efb88cb45a03e97981ff8832802b2b5d009dde0197a3b7b41c8"
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
    url "https://files.pythonhosted.org/packages/02/4b/81d972a46c9f1d978af1795e2abc988855c711453552cb45d75f6e4abbf5/sqlalchemy-2.1.3.tar.gz"
    sha256 "ade5281df06038c6394f532590d592d3381ee5d11b9e0006a2570aef41145118"
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
    url "https://files.pythonhosted.org/packages/33/e2/019c16b6f498d826c0458f4a40df86adfccbc8c9670f3e7c0f6dadce2f2d/tantivy-0.26.2.tar.gz"
    sha256 "93519eb9f18c298a6779d132505d67f158741318413c181e9ec488381edf2721"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/47/c6/ee486fd809e357697ee8a44d3d69222b344920433d3b6666ccd9b374630c/tenacity-9.1.4.tar.gz"
    sha256 "adb31d4c263f2bd041081ab33b498309a57c77f9acf2db65aadf0898179cf93a"
  end

  resource "tika-client" do
    url "https://files.pythonhosted.org/packages/d2/54/7525db2491a1bdfbaf869a713d1492572161b24a145d3c8dec9688635ec3/tika_client-1.0.0.tar.gz"
    sha256 "899c2fd08c717d8d590d46d76942103ef972fc37d43eadbfd6772a9961351ced"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/66/62/167a842aa0429d45f5e797354fd4343a96f6043d67d0513c675c7b8d36e6/tiktoken-0.14.0.tar.gz"
    sha256 "231dec90efcdccf1b565a1416107736f1e09b1a08fe736ef9d6363e626d03874"
  end

  resource "tinytag" do
    url "https://files.pythonhosted.org/packages/38/0f/fae085b7f19fe0c67b68e6d70098ac6cd046cc498f253f5ee56a3dd03bbc/tinytag-2.3.2.tar.gz"
    sha256 "021d711cdbdbf840d3b67b976cb34dadc58d2fcfd490eb74ef9602b37b991414"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/18/1e/bc6587c5ab643b2e17776cace9070a2ae73549c86bffac9934a600bf3c31/tokenizers-0.23.2.tar.gz"
    sha256 "7f0f085686b9de0d0079e6f874ae053600db64c5d13049e0bbc0119926d25aac"
  end

  resource "tornado" do
    url "https://files.pythonhosted.org/packages/06/61/53d562a57b28c08eda40b258c0f975e360541943ad7c7bef897a40caafda/tornado-6.5.10.tar.gz"
    sha256 "a6b1ccd08c04b4a06fb5aeb381be99de5ad1e5375c1785e31d78c880feb57687"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/0d/ea/b2a5bd54b28a324dae8211928b2d730b6547500342c7e6c6dea08bd0a485/tqdm-4.70.1.tar.gz"
    sha256 "cefd0eca11b2a37a3aee776544d4f4ae913f02688135b5556b8788dfa474afc4"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/9e/6e/5a50ca8aff5fdd4ff21271198d2fb9e1f11bcd0ea279576199c0caa34cba/transformers-5.18.0.tar.gz"
    sha256 "d89c206e42e841af7cd314b3d2b21c03e977d819cdb4aef65ada048769a644df"
  end

  resource "turbohtml" do
    url "https://files.pythonhosted.org/packages/30/0b/94e323028f3aa652a5fb924681ed9c17537921716ac8b8267f03078c617f/turbohtml-1.10.0.tar.gz"
    sha256 "a5f59f1f74b6b9060bc98751b1c7f68f5e74fd11e6252559eb838f948c8fc76d"
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
    url "https://files.pythonhosted.org/packages/d9/68/f1b440335057bfce71b6e50a9d09445aa2ecbd08359a337976627b8409e7/tzdata-2026.5.tar.gz"
    sha256 "8cc73c0a0bfca7dbfa59235d60b2eff82231dee33f53d206db1acd9173cfc0a7"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/81/5b/879b2f932adfa7a053c360d50bc896c977fa6426109185f7c12ebdd0cb9d/tzlocal-5.4.4.tar.gz"
    sha256 "8dbb8660838688a7b6ba4fed31d18dedf842afb4d47ca050d6d891c2c15f3be4"
  end

  resource "uharfbuzz" do
    url "https://files.pythonhosted.org/packages/90/cb/b87e1e470e43c6d0b8edd9b5ed968c4465c3de5391a0f253edb0df1a9f18/uharfbuzz-0.56.2.tar.gz"
    sha256 "303cd60c329bc4d88053ca03eb752476b51ca023944051c33710534dbc4fdac6"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/98/60/f174043244c5306c9988380d2cb10009f91563fc4b31293d27e17201af56/uritemplate-4.2.0.tar.gz"
    sha256 "480c2ed180878955863323eea31b0ede668795de182617fef9c6ca09e6ec9d0e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  resource "vine" do
    url "https://files.pythonhosted.org/packages/bd/e4/d07b5f29d283596b9727dd5275ccbceb63c44a1a82aa9e4bfd20426762ac/vine-5.1.0.tar.gz"
    sha256 "8b62e981d35c41049211cf62a0a1242d8c1ee9bd15bb196ce38aefd6799e61e0"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/b3/68/e6aa0b77d217b31f8f486ec0cdfe5e00e6e38dc0be657e7d85819b9faf0a/watchfiles-1.3.0.tar.gz"
    sha256 "99aee4a07847c06820765fd7b1b49ceac4f3f711ccb7d104655a33231de1c207"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/f0/b4/7830542634bb2d3e62aa3b586a72d5b3b6c91c3168929e7000ef3fed041d/wcwidth-0.9.2.tar.gz"
    sha256 "ae0ef90b90f6af38b54f1fe6d58662ec33b3cb4b8391958a62416d654231727b"
  end

  resource "whitenoise" do
    url "https://files.pythonhosted.org/packages/cb/2a/55b3f3a4ec326cd077c1c3defeee656b9298372a69229134d930151acd01/whitenoise-6.12.0.tar.gz"
    sha256 "f723ebb76a112e98816ff80fcea0a6c9b8ecde835f8ddda25df7a30a3c2db6ad"
  end

  resource "whoosh-compat" do
    url "https://files.pythonhosted.org/packages/23/6b/945311159351411dd5a1de82f2948fe1ef6bf36308ee65ed76f568b94a7a/whoosh_compat-0.3.0.tar.gz"
    sha256 "a7590ea0f178c60ca83774752d0d511c5d72b20357bbf361223aaab12e3d1813"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/3e/d2/a254a26d8ceaea87e0eee2e89fcfe53ddc1858418647493bb2937549ab6f/wrapt-2.5.0.tar.gz"
    sha256 "c48cdb6c904dca76d9915a579e4a5fab6b0c25f650c1019ce78a78effaf7a345"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/75/16/e8be8e2fb175bbf41a0680381a319f1199fae256588241a2ac8677eafb49/yarl-1.25.1.tar.gz"
    sha256 "03dd38de09bc213e9a8b29761eec33ee1d5318dac0e49d8af36e4d27830e23a7"
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

  # psycopg-c must be kept at the same version as the `psycopg` resource, as
  # `brew update-python-resources` cannot update it (see above).
  send(:resource, "psycopg-c") do
    url "https://files.pythonhosted.org/packages/58/53/bf15aa48cd6f0ad0039b9f48681d2e76e8564d413af47b13fab50dd03555/psycopg_c-3.3.6.tar.gz"
    sha256 "29c568426ad61c1b702c7d73505c43ca2c9fc5d97a8431d8d9049e731e319ff8"
  end
end
