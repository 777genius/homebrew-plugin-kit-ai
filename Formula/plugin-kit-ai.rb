class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "2.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.4/plugin-kit-ai_2.0.4_darwin_arm64.tar.gz"
      sha256 "d8e62f0c693d574fd50d0e9eba0e0b7459bcc196918410cf65bec8b071751e2e"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.4/plugin-kit-ai_2.0.4_darwin_amd64.tar.gz"
      sha256 "b64f08f20e7db04b9f7750270795ae5b3da9d653fc2c379b51cffdc1751c8a59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.4/plugin-kit-ai_2.0.4_linux_arm64.tar.gz"
      sha256 "a09d704e4d012f8ffede0ca415bfa2147a384516707c729a11cf5bbbf6d1a26f"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.4/plugin-kit-ai_2.0.4_linux_amd64.tar.gz"
      sha256 "bd61ec0447a1670275fc397622b7594a4a652dbab633f9e6e47d38750941254d"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
