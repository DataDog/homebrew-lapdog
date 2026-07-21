# Unless explicitly stated otherwise all files in this repository are licensed
# under the Apache-2.0 License.
#
# This product includes software developed at Datadog (https://www.datadoghq.com/)
# Copyright 2026-Present Datadog, Inc.

class Lapdog < Formula
  include Language::Python::Virtualenv

  desc "Local LLM Observability dev tool — wraps dd-apm-test-agent"
  homepage "https://github.com/DataDog/dd-apm-test-agent"
  url "https://github.com/DataDog/dd-apm-test-agent/archive/refs/tags/v1.63.1.tar.gz"
  sha256 "0817d4fb60f37542ad534cf9ced724e8559d49753c48741a0016025bcf58f703"
  license "BSD-3-Clause"
  head "https://github.com/DataDog/dd-apm-test-agent.git", branch: "master"

  bottle do
    root_url "https://github.com/DataDog/homebrew-lapdog/releases/download/lapdog-eb17541bd8f89a2bfa1799d6dfe865443b6b821b"
    sha256 cellar: :any, arm64_sonoma: "e3631bc956681458c53a45e51c087eb0dbbc6e5045406206efe357fb527cf3f6"
    sha256 cellar: :any, x86_64_linux: "7ca43f4f7a24c2e40a94af25738d54e6b91b263b1965987291d923b126c744d0"
  end

  depends_on "expat"
  depends_on "libyaml"
  depends_on "python@3.13"

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

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/c9/c7/424b75da314c1045981bd9777432fad05a9e0c69daa4ed7e308bbaffe405/certifi-2026.6.17.tar.gz"
    sha256 "024c88eeec92ca068db80f02b8b07c9cef7b9fe261d1d535abfd5abd6f6af432"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/bd/2a/23f34ec9d04624958e137efdc394888716353190e75f25dd22c7a2c7a8aa/charset_normalizer-3.4.9.tar.gz"
    sha256 "673611bbd43f0810bec0b0f028ddeaaa501190339cac411f347ac76917c3ae7b"
  end

  resource "ddsketch" do
    url "https://files.pythonhosted.org/packages/b8/c7/25f300ba359c7e723180ce962a30e1f820c3990e3f3e8bbed16ae9387cab/ddsketch-3.0.1.tar.gz"
    sha256 "aa8f20b2965e61731ca4fee2ca9c209f397f5bbb23f9d192ec8bd7a2f5bd9824"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2d/f5/c831fac6cc817d26fd54c7eaccd04ef7e0288806943f7cc5bbf69f3ac1f0/frozenlist-1.8.0.tar.gz"
    sha256 "3ede829ed8d842f6cd48fc7081d7a41001a56f1f38603f9d49bf3020d59a31ad"
  end

  resource "grpcio" do
    url "https://files.pythonhosted.org/packages/90/bc/656b89387d6f4ed7e0686c7b64c2ae7e554a759aa58122c8e5fb99392c32/grpcio-1.82.1.tar.gz"
    sha256 "707b24abd90fcb1e45bcc080577da1dbf9971d107490589b9539af8e1e77b4b5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cd/63/9496c57188a2ee585e0f1db071d75089a11e98aa86eb99d9d7618fc1edce/idna-3.18.tar.gz"
    sha256 "ffb385a7e039654cef1ab9ef32c6fafe283c0c0467bba1d9029738ce4a14a848"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/31/f9/c0a1c127f9049db9155afc316952ea571720dd01833ff5e4d7e8e6352dbb/msgpack-1.2.1.tar.gz"
    sha256 "04c721c2c7448767e9e3f2520a475663d8ee0f09c31890f6d2bd70fd636a9647"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/1a/c2/c2d94cbe6ac1753f3fc980da97b3d930efe1da3af3c9f5125354436c073d/multidict-6.7.1.tar.gz"
    sha256 "ec6652a1bee61c53a3e5776b6049172c53b6aaba34f18c9ad04f82712bac623d"
  end

  resource "opentelemetry-proto" do
    url "https://files.pythonhosted.org/packages/fd/02/f6556142301d136e3b7e95ab8ea6a5d9dc28d879a99f3dd673b5f97dca06/opentelemetry_proto-1.36.0.tar.gz"
    sha256 "0f10b3c72f74c91e0764a5ec88fd8f1c368ea5d9c64639fb455e2854ef87dd2f"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/ec/44/c87281c333769159c50594f22610f77398a47ccbfbbf23074e744e86f87c/propcache-0.5.2.tar.gz"
    sha256 "01c4fc7480cd0598bb4b57022df55b9ca296da7fc5a8760bd8451a7e63a7d427"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/66/70/e908e9c5e52ef7c3a6c7902c9dfbb34c7e29c25d2f81ade3856445fd5c94/protobuf-6.33.6.tar.gz"
    sha256 "a6768d25248312c297558af96a9f9c929e8c4cee0659cb07e780731095f38135"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "requests-aws4auth" do
    url "https://files.pythonhosted.org/packages/d1/fd/796afb1c08e6332da9200bc530bcd869a17cecf93c4d9355d9af8c263eea/requests_aws4auth-1.3.2.tar.gz"
    sha256 "7a697bf3c7a66d82980ad3348a2539403870d5c1f1e313f5676fb11e6793eef8"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/31/33/ebe9e3d1f86c7a0b51094c0a146392045ca1631d2664889539dec8088a33/yarl-1.24.5.tar.gz"
    sha256 "e81b83143bee16329c23db3c1b2d82b29892fcbcb849186d2f6e98a5abe9a57f"
  end

  def install
    # dd-apm-test-agent uses setuptools-scm, which reads the version from
    # git tags. The GitHub source tarball doesn't include .git, so we have
    # to set the version explicitly.
    ENV["SETUPTOOLS_SCM_PRETEND_VERSION_FOR_DDAPM_TEST_AGENT"] = version.to_s
    ENV["DYLD_LIBRARY_PATH"] = formula_opt_lib("expat").to_s

    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      To fully remove lapdog's local runtime state, run this before uninstalling:

        lapdog uninstall

      This stops the background agent, removes ~/.lapdog, uninstalls the
      Claude Code plugin and Pi extension if present, and stops Codex watchers
      when possible. Homebrew's uninstall only removes files installed under
      the brew prefix.
    EOS
  end

  test do
    system libexec/"bin/python", "-c", "import ddapm_test_agent, lapdog"
  end
end
