class PaperlessNgx < Formula
  include Language::Python::Virtualenv

  desc "Scan, index and archive all your physical documents"
  homepage "https://docs.paperless-ngx.com/"
  url "https://github.com/paperless-ngx/paperless-ngx/archive/refs/tags/v2.18.4.tar.gz"
  sha256 "112d31aea61682b7d461fb8020b7f13ae9507d32ede068a5a24aba69b32cf972"
  license "GPL-3.0-or-later"
  revision 4

  bottle do
    root_url "https://ghcr.io/v2/ingmarstein/paperless-ngx"
    sha256 arm64_tahoe:  "c5b071fcea1a1a2477e95adddb45ba903169f2eb83c85236c87bb5cbc499b6e5"
    sha256 x86_64_linux: "5ef0d9fb302239e2dbd7827a98eafff4b253fc7b6fc83cc6cb8a90acf04586fc"
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
  depends_on "python@3.13"
  depends_on "qpdf"
  depends_on "s6"
  depends_on "scipy"
  depends_on "six"
  depends_on "tesseract-lang"

  uses_from_macos "libxml2"
  uses_from_macos "libxslt"
  uses_from_macos "zlib"

  resource "amqp" do
    url "https://files.pythonhosted.org/packages/79/fc/ec94a357dfc6683d8c86f8b4cfa5416a4c36b28052ec8260c77aca96a443/amqp-5.3.1.tar.gz"
    sha256 "cddc00c725449522023bad949f70fff7b48f0b1ade74d170a6f10ab044739432"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/c6/78/7d432127c41b50bccba979505f272c16cbcadcc33645d5fa3a738110ae75/anyio-4.11.0.tar.gz"
    sha256 "82a8d0b81e318cc5ce71a5f1f8b5c4e63619620b63141ef8c995fa0db95a57c4"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/7f/bf/0f3ecda32f1cb3bf1dca480aca08a7a8a3bdc4bed2343a103f30731565c9/asgiref-3.9.2.tar.gz"
    sha256 "a0249afacb66688ef258ffe503528360443e2b9a8d8c4581b6ebefa58c841ef1"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/5a/b0/1367933a8532ee6ff8d63537de4f1177af4bff9f3e829baf7331f595bb24/attrs-25.3.0.tar.gz"
    sha256 "75d7cefc7fb576747b2c81b4442d4d4a1ce0900973527c011d1030fd3bf4af1b"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/6b/d52e42361e1aa00709585ecc30b3f9684b3ab62530771402248b1b1d6240/babel-2.17.0.tar.gz"
    sha256 "0c54cffb19f690cdcc52a3b50bcbf71e07a808d1c80d549f2459b9d2cf0afb9d"
  end

  resource "billiard" do
    url "https://files.pythonhosted.org/packages/b9/6a/1405343016bce8354b29d90aad6b0bf6485b5e60404516e4b9a3a9646cf0/billiard-4.2.2.tar.gz"
    sha256 "e815017a062b714958463e07ba15981d802dc53d41c5b69d28c5a7c238f8ecf3"
  end

  resource "bleach" do
    url "https://files.pythonhosted.org/packages/76/9a/0e33f5054c54d349ea62c277191c020c2d6ef1d65ab2cb1993f91ec846d1/bleach-6.2.0.tar.gz"
    sha256 "123e894118b8a599fd80d3ec1a6d4cc7ce4e5882b1317a7e1ba69b56e95f991f"
  end

  resource "brotli" do
    url "https://files.pythonhosted.org/packages/2f/c2/f9e977608bdf958650638c3f1e28f85a1b075f075ebbe77db8555463787b/Brotli-1.1.0.tar.gz"
    sha256 "81de08ac11bcb85841e440c13611c00b67d3bf82698314928d0b676362546724"
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
    url "https://files.pythonhosted.org/packages/12/a0/46450fcf9e56af18a6b0440ba49db6635419bb7bc84142c35f4143b1a66c/channels-4.3.1.tar.gz"
    sha256 "97413ffd674542db08e16a9ef09cd86ec0113e5f8125fbd33cf0854adcf27cdb"
  end

  resource "channels-redis" do
    url "https://files.pythonhosted.org/packages/ab/69/fd3407ad407a80e72ca53850eb7a4c306273e67d5bbb71a86d0e6d088439/channels_redis-4.3.0.tar.gz"
    sha256 "740ee7b54f0e28cf2264a940a24453d3f00526a96931f911fcb69228ef245dd2"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/83/2d/5fd176ceb9b2fc619e63405525573493ca23441330fcdaee6bef9460e924/charset_normalizer-3.4.3.tar.gz"
    sha256 "6fce4b8500244f6fcb71465d4a4930d132ba9ab8e71a7859e6a5d59851068d14"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/46/61/de6cd827efad202d7057d93e0fed9294b96952e188f7384832791c7b2254/click-8.3.0.tar.gz"
    sha256 "e7b8232224eba16f4ebe410c25ced9f7875cb5f3263ffc93cc3e8da705e229c4"
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
    url "https://files.pythonhosted.org/packages/98/97/06afe62762c9a8a86af0cfb7bfdab22a43ad17138b07af5b1a58442690a2/deprecated-1.2.18.tar.gz"
    sha256 "422b6f6d859da6f2ef57857761bfb392480502a64c3028ca9bbe86085d72115d"
  end

  resource "deprecation" do
    url "https://files.pythonhosted.org/packages/5a/d3/8ae2869247df154b64c1884d7346d412fed0c49df84db635aab2d1c40e62/deprecation-2.1.0.tar.gz"
    sha256 "72b3bde64e5d778694b0cf68178aed03d15e15477116add3fb773e581f9518ff"
  end

  resource "django" do
    url "https://files.pythonhosted.org/packages/4c/8c/2a21594337250a171d45dda926caa96309d5136becd1f48017247f9cdea0/django-5.2.6.tar.gz"
    sha256 "da5e00372763193d73cecbf71084a3848458cecf4cee36b9a1e8d318d114a87b"
  end

  resource "django-allauth" do
    url "https://files.pythonhosted.org/packages/b1/e7/b3232c27da9f43e3db72d16addd90891ee233fa058ddd0588bafcded2ea7/django_allauth-65.4.1.tar.gz"
    sha256 "60b32aef7dbbcc213319aa4fd8f570e985266ea1162ae6ef7a26a24efca85c8c"
  end

  resource "django-auditlog" do
    url "https://files.pythonhosted.org/packages/e1/46/9da1d94493832fa18d2f6324a76d387fa232001593866987a96047709f4e/django_auditlog-3.2.1.tar.gz"
    sha256 "63a4c9f7793e94eed804bc31a04d9b0b58244b1d280e2ed273c8b406bff1f779"
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
    url "https://files.pythonhosted.org/packages/93/6c/16f6cb6064c63074fd5b2bd494eb319afd846236d9c1a6c765946df2c289/django_cors_headers-4.7.0.tar.gz"
    sha256 "6fdf31bf9c6d6448ba09ef57157db2268d515d94fc5c89a0a1028e1fc03ee52b"
  end

  resource "django-extensions" do
    url "https://files.pythonhosted.org/packages/6d/b3/ed0f54ed706ec0b54fd251cc0364a249c6cd6c6ec97f04dc34be5e929eac/django_extensions-4.1.tar.gz"
    sha256 "7b70a4d28e9b840f44694e3f7feb54f55d495f8b3fa6c5c0e5e12bcb2aa3cdeb"
  end

  resource "django-filter" do
    url "https://files.pythonhosted.org/packages/b5/40/c702a6fe8cccac9bf426b55724ebdf57d10a132bae80a17691d0cf0b9bac/django_filter-25.1.tar.gz"
    sha256 "1ec9eef48fa8da1c0ac9b411744b16c3f4c31176c867886e4c48da369c407153"
  end

  resource "django-guardian" do
    url "https://files.pythonhosted.org/packages/56/de/2bac3ae7e122d171a912d98be2aab37179071eac39fa8d8d6d99efb8c5d8/django_guardian-3.0.7.tar.gz"
    sha256 "ff8cdc3e2685aa6d3829e7c4e9b8f60c135d6e4c405e5039b9b6602c80e224ee"
  end

  resource "django-multiselectfield" do
    url "https://files.pythonhosted.org/packages/04/9a/27060e8aa491ff2d286054df2e89df481a8dfe0e5e459fa36c0f48e3c10c/django_multiselectfield-1.0.1.tar.gz"
    sha256 "3f8b4fff3e07d4a91c8bb4b809bc35caeb22b41769b606f4c9edc53b8d72a667"
  end

  resource "django-soft-delete" do
    url "https://files.pythonhosted.org/packages/da/bf/13996c18bffee3bbcf294830c1737bfb5564164b8319c51e6714b6bdf783/django_soft_delete-1.0.21.tar.gz"
    sha256 "542bd4650d2769105a4363ea7bb7fbdb3c28429dbaa66417160f8f4b5dc689d5"
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
    url "https://files.pythonhosted.org/packages/da/b9/741056455aed00fa51a1df41fad5ad27c8e0d433b6bf490d4e60e2808bc6/drf_spectacular-0.28.0.tar.gz"
    sha256 "2c778a47a40ab2f5078a7c42e82baba07397bb35b074ae4680721b2805943061"
  end

  resource "drf-spectacular-sidecar" do
    url "https://files.pythonhosted.org/packages/a9/f7/0cb2f520723f1823ef7b6651d447927f61ba92d152a5d68132599b90624f/drf_spectacular_sidecar-2025.8.1.tar.gz"
    sha256 "1944ae0eb5136cff5aa135211bec31084cef1af03a04de9b7f2f912b3c59c251"
  end

  resource "drf-writable-nested" do
    url "https://files.pythonhosted.org/packages/e8/57/df87d92fbfc3f0f2ef1a49c47f2a83389a4a13b7acf62b8bf7b223627d82/drf_writable_nested-0.7.2-py3-none-any.whl"
    sha256 "4a3d2737c1cbfafa690e30236b169112e5b23cfe3d288f3992b0651a1b828c4d"
  end

  # Breaking change in v2.0
  resource "fido2" do
    url "https://files.pythonhosted.org/packages/eb/cc/4529123364d41f342145f2fd775307eaed817cd22810895dea10e15a4d06/fido2-1.2.0.tar.gz"
    sha256 "e39f95920122d64283fda5e5581d95a206e704fa42846bfa4662f86aa0d3333b"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/40/bb/0ab3e58d22305b6f5440629d20683af28959bf793d98d11950e305c1c326/filelock-3.19.1.tar.gz"
    sha256 "66eda1888b0171c998b35be2bcc0f6d75c388a7ce20c3f3f37aa8e96c2dddf58"
  end

  resource "flower" do
    url "https://files.pythonhosted.org/packages/09/a1/357f1b5d8946deafdcfdd604f51baae9de10aafa2908d0b7322597155f92/flower-2.0.1.tar.gz"
    sha256 "5ab717b979530770c16afb48b50d2a98d23c3e9fe39851dcf6bc4d01845a02a0"
  end

  # needed for celery --pool gevent
  # prevents a crash on macOS:
  #   *** multi-threaded process forked ***
  #   crashed on child side of fork pre-exec
  # See https://bugs.python.org/issue37677
  resource "gevent" do
    url "https://files.pythonhosted.org/packages/9e/48/b3ef2673ffb940f980966694e40d6d32560f3ffa284ecaeb5ea3a90a6d3f/gevent-25.9.1.tar.gz"
    sha256 "adf9cd552de44a4e6754c51ff2e78d9193b7fa6eab123db9578a210e657235dd"
  end

  resource "gotenberg-client" do
    url "https://files.pythonhosted.org/packages/c4/e8/65928856a46023eda0af83d65987a99aa5190557f64c3c30478b91229070/gotenberg_client-0.11.0.tar.gz"
    sha256 "44479d996fb4103fc324d84395cc4a762863a033833ac1fc63490e96109f50d7"
  end

  resource "granian" do
    url "https://files.pythonhosted.org/packages/78/9b/6ac903de211e5874824e7349387c9e0467459dc1ad0cd960cb4196f38ae6/granian-2.5.4.tar.gz"
    sha256 "85989a08052f1bbb174fd73759e1ae505e50b4c0690af366ca6ba844203dd463"
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
    url "https://files.pythonhosted.org/packages/f7/08/24b72f425b75e1de7442fb1740f69ca66d5820b9f9c0e2511ff9aadab3b7/hiredis-3.2.1.tar.gz"
    sha256 "5a5f64479bf04dd829fe7029fad0ea043eac4023abc6e946668cbbec3493a78d"
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
    url "https://files.pythonhosted.org/packages/98/1d/3062fcc89ee05a715c0b9bfe6490c00c576314f27ffee3a704122c6fd259/humanize-4.13.0.tar.gz"
    sha256 "78f79e68f76f0b04d711c4e55d32bebef5be387148862cb1ef83d2b58e7935a0"
  end

  resource "hyperframe" do
    url "https://files.pythonhosted.org/packages/02/e7/94f8232d4a74cc99514c13a9f995811485a6903d48e5d952771ef6322e30/hyperframe-6.1.0.tar.gz"
    sha256 "f630908a00854a7adeabd6382b43923a4c4cd4b821fcb527e6ab9e15382a3b08"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "imap-tools" do
    url "https://files.pythonhosted.org/packages/b0/76/2d74bf4702d7d9fb2dd056e058929961a05389be47b990f3275e8596012e/imap_tools-1.11.0.tar.gz"
    sha256 "77b055d301f24e668ff54ad50cc32a36d1579c6aa9b26e5fb6501fb622feb6ea"
  end

  resource "img2pdf" do
    url "https://files.pythonhosted.org/packages/82/c3/023387e00682dc1b46bd719ec19c4c9206dc8eb182dfd02bc62c5b9320a2/img2pdf-0.6.1.tar.gz"
    sha256 "306e279eb832bc159d7d6294b697a9fbd11b4be1f799b14b3b2174fb506af289"
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
    url "https://files.pythonhosted.org/packages/b2/97/5d42485e71dfc078108a86d6de8fa46db44a1a9295e89c5d6d4a06e23a62/markupsafe-3.0.2.tar.gz"
    sha256 "ee55d3edf80167e48ea11a923c7386f4669df67d7994554387f84e7d8b0a2bf0"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/45/b1/ea4f68038a18c77c9467400d166d74c4ffa536f34761f7983a104357e614/msgpack-1.1.1.tar.gz"
    sha256 "77b79ce34a2bdab2594f490c8e80dd62a02d650b91a75159a63ec413b8d104cd"
  end

  resource "nltk" do
    url "https://files.pythonhosted.org/packages/3c/87/db8be88ad32c2d042420b6fd9ffd4a149f9a0d7f0e86b3f543be2eeeedd2/nltk-3.9.1.tar.gz"
    sha256 "87d127bd3de4bd89a4f81265e5fa59cb1b199b27440175370f7417d2bc7ae868"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/0b/5f/19930f824ffeb0ad4372da4812c50edbd1434f678c90c2733e1188edfc63/oauthlib-3.3.1.tar.gz"
    sha256 "0f0f8aa759826a193cf66c12ea1af1637f87b9b4622d46e866952bb022e538c9"
  end

  resource "ocrmypdf" do
    url "https://files.pythonhosted.org/packages/cd/40/cb85e6260e5a20d08195d03541b31db4296f8f4d3442ee595686f47a75b0/ocrmypdf-16.10.4.tar.gz"
    sha256 "de749ef5f554b63d57e68d032e7cba5500cbd5030835bf24f658f7b7a04f3dc1"
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
    url "https://files.pythonhosted.org/packages/78/46/5223d613ac4963e1f7c07b2660fe0e9e770102ec6bda8c038400113fb215/pdfminer_six-20250506.tar.gz"
    sha256 "b03cc8df09cf3c7aba8246deae52e0bca7ebb112a38895b5e1d4f5dd2b8ca2e7"
  end

  resource "pi-heif" do
    url "https://files.pythonhosted.org/packages/a1/3c/15d70bac37e50bd03ca2cdf7f7237d237c6f4e3e6d6cefdcc95b53dd708e/pi_heif-1.1.0.tar.gz"
    sha256 "bac501008a000f2c560086d82e785e3ca2fc688b24b66c1d7dae537ef2fd6a6e"
  end

  resource "pikepdf" do
    url "https://files.pythonhosted.org/packages/f5/4c/62b37a3ee301c245be6ad269ca771c2c5298bf049366e1094cfdf80d850c/pikepdf-9.11.0.tar.gz"
    sha256 "5ad6bffba08849c21eee273ba0b6fcd4b6a9cff81bcbca6988f87a765ba62163"
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
    url "https://files.pythonhosted.org/packages/83/7f/6147cb842081b0b32692bf5a0fdf58e9ac95418ebac1184d4431ec44b85f/psycopg_c-3.2.9.tar.gz"
    sha256 "8c9f654f20c6c56bddc4543a3caab236741ee94b6732ab7090b95605502210e2"
  end

  resource "psycopg-pool" do
    url "https://files.pythonhosted.org/packages/cf/13/1e7850bb2c69a63267c3dbf37387d3f71a00fd0e2fa55c5db14d64ba1af4/psycopg_pool-3.2.6.tar.gz"
    sha256 "0f92a7817719517212fbfe2fd58b8c35c1850cdd2a80d36b581ba2085d9148e5"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/fe/cf/d2d3b9f5699fb1e4615c8e32ff220203e43b248e1dfcc6736ad9057731ca/pycparser-2.23.tar.gz"
    sha256 "78816d4f24add8f10a06d6f05b4d424ad9e96cfebf68a4ddc99c65c0720d00c2"
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
    url "https://files.pythonhosted.org/packages/f6/b0/4bc07ccd3572a2f9df7e6782f52b0c6c90dcbb803ac4a167702d7d0dfe1e/python_dotenv-1.1.1.tar.gz"
    sha256 "a8a6399716257f45be6a007360200409fce5cda2661e3dec71d23dc15f6189ab"
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
    url "https://files.pythonhosted.org/packages/ed/fc/a98b616db9a42dcdda7c78c76bdfdf6fe290ac4c5ffbb186f73ec981ad5b/rapidfuzz-3.14.1.tar.gz"
    sha256 "b02850e7f7152bd1edff27e9d584505b84968cacedee7a734ec4050c655a803c"
  end

  resource "redis" do
    url "https://files.pythonhosted.org/packages/47/da/d283a37303a995cd36f8b92db85135153dc4f7a8e4441aa827721b442cfb/redis-5.2.1.tar.gz"
    sha256 "16f2e22dff21d5125e8481515e386711a34cbec50f0e44413dd7d9c060a54e0f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2f/db/98b5c277be99dd18bfd91dd04e1b759cad18d1a338188c936e92f921c7e2/referencing-0.36.2.tar.gz"
    sha256 "df2e89862cd09deabbdba16944cc3f10feb6b3e6f18e902f7cc25609a34775aa"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/49/d3/eaa0d28aba6ad1827ad1e716d9a93e1ba963ada61887498297d3da715133/regex-2025.9.18.tar.gz"
    sha256 "c5ba23274c61c6fef447ba6a39333297d0c247f53059dba0bca415cac511edc4"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/42/f2/05f29bc3913aea15eb670be136045bf5c5bbf4b99ecb839da9b422bb2c85/requests-oauthlib-2.0.0.tar.gz"
    sha256 "b3dffaebd884d8cd778494369603a9e7b58d29111bf6b41bdc2dcd87203af4e9"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/fe/75/af448d8e52bf1d8fa6a9d089ca6c07ff4453d86c65c145d0a300bb073b9b/rich-14.1.0.tar.gz"
    sha256 "e497a48b844b0320d45007cdebfeaeed8db2a4f4bcf49f15e455cfc4af11eaa8"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/e9/dd/2c0cbe774744272b0ae725f44032c77bdcab6e8bcf544bffa3b6e70c8dba/rpds_py-0.27.1.tar.gz"
    sha256 "26a1c73171d10b7acccbded82bf6a586ab8203601e565badc74bbbf8bc5a10f8"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/98/c2/a7855e41c9d285dfe86dc50b250978105dce513d6e459ea66a6aeb0e1e0c/scikit_learn-1.7.2.tar.gz"
    sha256 "20e9e49ecd130598f1ca38a1d85090e1a600147b9c02fa6f15d69cb53d968fda"
  end

  resource "setproctitle" do
    url "https://files.pythonhosted.org/packages/8d/48/49393a96a2eef1ab418b17475fb92b8fcfad83d099e678751b05472e69de/setproctitle-1.3.7.tar.gz"
    sha256 "bc2bc917691c1537d5b9bca1468437176809c7e11e5694ca79a9ca12345dcb9e"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "sqlparse" do
    url "https://files.pythonhosted.org/packages/e5/40/edede8dd6977b0d3da179a342c198ed100dd2aba4be081861ee5911e4da4/sqlparse-0.5.3.tar.gz"
    sha256 "09f67787f56a0b16ecdbde1bfc7f5d9c3371ca683cfeaa8e6ff60b4807ec9272"
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
    url "https://files.pythonhosted.org/packages/09/ce/1eb500eae19f4648281bb2186927bb062d2438c2e5093d1360391afd2f90/tornado-6.5.2.tar.gz"
    sha256 "ab53c8f9a0fa351e2c0741284e06c7a45da86afb544133201c5cc8578eb076a0"
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
    url "https://files.pythonhosted.org/packages/15/22/9ee70a2574a4f4599c47dd506532914ce044817c7752a79b6a51286319bc/urllib3-2.5.0.tar.gz"
    sha256 "3fc47733c7e419d4bc3f6b3dc2b4f890bb743906a30d56ba4a5bfa4bbff92760"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/af/c0/854216d09d33c543f12a44b393c402e89a920b1a0a7dc634c42de91b9cf6/uvloop-0.21.0.tar.gz"
    sha256 "3bf12b0fda68447806a7ad847bfa591613177275d35b6724b1ee573faa3704e3"
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
    url "https://files.pythonhosted.org/packages/95/8f/aeb76c5b46e273670962298c23e7ddde79916cb74db802131d49a85e4b7d/wrapt-1.17.3.tar.gz"
    sha256 "f66eb08feaa410fe4eebd17f2a2c8e2e46d3476e9f8c783daa8e09e0faa666d0"
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
    venv = virtualenv_install_with_resources without: ["httpx-oauth", "zxing-cpp"]
    python_executable = venv.root/"bin/python"
    manage_py_script = venv.site_packages/"manage.py"
    celery_executable = venv.root/"bin/celery"
    granian_executable = venv.root/"bin/granian"
    # https://github.com/frankie567/hatch-regex-commit/issues/4
    resource("httpx-oauth").stage do
      inreplace "pyproject.toml",
                /requires\s*=\s*\[\s*"hatchling",\s*"hatch-regex-commit"\s*\]/,
                'requires = ["hatchling"]'
      venv.pip_install Pathname.pwd
    end
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
        --pool gevent \\
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
