class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.2/plugin-kit-ai_1.2.2_darwin_arm64.tar.gz"
      sha256 "dbe555e383b56d3348cc4759265cff41088f68f6adba9184bc9ea4ec1c55ebe1"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.2/plugin-kit-ai_1.2.2_darwin_amd64.tar.gz"
      sha256 "d5fe654372b9d249a32a9ec53ad2c5780aceeed687f17c3143f2b929b673a847"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.2/plugin-kit-ai_1.2.2_linux_arm64.tar.gz"
      sha256 "84e456d7ba520a5764aef52593ab31c9e6e61c0987b89af621de51ecadc0dfdf"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.2/plugin-kit-ai_1.2.2_linux_amd64.tar.gz"
      sha256 "d49f3ece757c2f2698a4ad6fc2291f29c19baacebf8c0382eb292bfe3f1090e6"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
