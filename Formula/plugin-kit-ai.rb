class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.6/plugin-kit-ai_1.0.6_darwin_arm64.tar.gz"
      sha256 "2e2c5e118ecd8ca1baab86e62ed5add05e4888b0186dd1b7e759d0b2a531c3d0"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.6/plugin-kit-ai_1.0.6_darwin_amd64.tar.gz"
      sha256 "cf0bed24fecc57c397fd92e4560859e99b8a22f9fd79142425fdda2e999ea638"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.6/plugin-kit-ai_1.0.6_linux_arm64.tar.gz"
      sha256 "a6cd002fbb87e333df834e724edc3f21d1fa58b671c533f459941e9e41170660"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.6/plugin-kit-ai_1.0.6_linux_amd64.tar.gz"
      sha256 "b534e2a702fb2e85525e2521bb09f962056680267a39eb2caf9479da0b6d5b16"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
