class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.4/plugin-kit-ai_1.0.4_darwin_arm64.tar.gz"
      sha256 "d797a25a8714171560fac2c01b515b2df02adac06495659d133b4d0c28747999"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.4/plugin-kit-ai_1.0.4_darwin_amd64.tar.gz"
      sha256 "f5e7e6b1f879c713c472be7314377ee4872fe3d872b1b5f4a50fb1e0edec4d8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.4/plugin-kit-ai_1.0.4_linux_arm64.tar.gz"
      sha256 "7e6cf433c239f36f46a7a3c248983e52087813a039a737e4b318bc9311a85261"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.4/plugin-kit-ai_1.0.4_linux_amd64.tar.gz"
      sha256 "c1d2bde0d04a5c9ddc73203cb6433602a728d4337a1a9b092514613e5d37e022"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
