class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.2/plugin-kit-ai_1.1.2_darwin_arm64.tar.gz"
      sha256 "abbc8e280ad11b3bb9e74366d33c61efbcafbd9eb81a2af1fce874b1c45bb8b8"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.2/plugin-kit-ai_1.1.2_darwin_amd64.tar.gz"
      sha256 "0717222d8f9a34ece4b3533c604e024393ed677dfab604ac3c1eea5950f117c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.2/plugin-kit-ai_1.1.2_linux_arm64.tar.gz"
      sha256 "efba5d2f9b4fb99554a82d4c184ed9b7853f93ce3b90589c6dabedf1ba231765"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.2/plugin-kit-ai_1.1.2_linux_amd64.tar.gz"
      sha256 "f2aa05a156c5505c811844e42d1d6c2c1a5e3171845b909f422d84f7cf059827"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
