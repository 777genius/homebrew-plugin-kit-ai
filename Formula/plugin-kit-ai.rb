class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.2/plugin-kit-ai_1.0.2_darwin_arm64.tar.gz"
      sha256 "8e8c7767b61e1533c7dc0707d19ed902acd6a38e2fe447403cb5a279468614c2"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.2/plugin-kit-ai_1.0.2_darwin_amd64.tar.gz"
      sha256 "fe0a65c7854e4c3641af90250921a3177d019bc9d428b7832a56182faa4aae4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.2/plugin-kit-ai_1.0.2_linux_arm64.tar.gz"
      sha256 "25690fb88e56db5de3667b411f7405a87fba7eada01b238e790739d08c123660"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.2/plugin-kit-ai_1.0.2_linux_amd64.tar.gz"
      sha256 "31e9bc6e381de972ddb3e00f501deab504ae560219dd9c77bc5789a1803b2851"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
