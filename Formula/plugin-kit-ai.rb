class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v2.0.0/plugin-kit-ai_2.0.0_darwin_arm64.tar.gz"
      sha256 "d19acabfb2844c00a3fa2e49ea32b47d4200eaac3e53a7883836da06eefac16d"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v2.0.0/plugin-kit-ai_2.0.0_darwin_amd64.tar.gz"
      sha256 "c17f359cd640a14290bd38eaeb98233c009615aeba06356029b4aee4db773132"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v2.0.0/plugin-kit-ai_2.0.0_linux_arm64.tar.gz"
      sha256 "795d830402a293eb49fc367d5a3eadafbbb33b5187125d3a4bf058fb85775521"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v2.0.0/plugin-kit-ai_2.0.0_linux_amd64.tar.gz"
      sha256 "0bef594ecb1f700834404081a511730994f3d50b07f53be45e8bd8d965ca225c"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
