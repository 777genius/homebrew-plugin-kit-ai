class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.1/plugin-kit-ai_2.0.1_darwin_arm64.tar.gz"
      sha256 "f5f69a6cf055086eb56ad8273c82a4799caf8b5bf9eb3ef3264c3cbb282fb531"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.1/plugin-kit-ai_2.0.1_darwin_amd64.tar.gz"
      sha256 "d84c79b3b1f5317983b0642382af3ab66aa27e699cc19b548f77f26038df3e30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.1/plugin-kit-ai_2.0.1_linux_arm64.tar.gz"
      sha256 "2f9863dc852754d4cb37b3b5175945ca59c40f941d0784c72c58e55a50c86e12"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.1/plugin-kit-ai_2.0.1_linux_amd64.tar.gz"
      sha256 "a57a534da102cdf31c28dea8f10a10e7a4affb004cb80fb79a564596834ea716"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
