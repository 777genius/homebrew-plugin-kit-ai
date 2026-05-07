class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.1/plugin-kit-ai_1.2.1_darwin_arm64.tar.gz"
      sha256 "5afc3dd429ca89b51717252bf0998898158947731baa906e2fc1ecd79661cabc"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.1/plugin-kit-ai_1.2.1_darwin_amd64.tar.gz"
      sha256 "60c47e90e77bac00fb98fcd2351176b1ba61e545a542c655d9c3dbf59d3807df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.1/plugin-kit-ai_1.2.1_linux_arm64.tar.gz"
      sha256 "d8d434ed42d9404edb4fde1c5a6585b2364b52bc10c765bf209a564f4d1877d3"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.1/plugin-kit-ai_1.2.1_linux_amd64.tar.gz"
      sha256 "0f7cf9b6a15dcdbfb1daa88e5d7405abbc40f8ad7d7227fc35091d6557b02bf7"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
