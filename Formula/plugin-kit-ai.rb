class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.2/plugin-kit-ai_2.0.2_darwin_arm64.tar.gz"
      sha256 "1e282a4c75cb615f87b5fab81e102f14c6be98eef45f20b0c7088a0e3f194d95"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.2/plugin-kit-ai_2.0.2_darwin_amd64.tar.gz"
      sha256 "90ca8cdfd0078a6912769306987d19e9352c3c46f8d64977a7672c6a0050b161"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.2/plugin-kit-ai_2.0.2_linux_arm64.tar.gz"
      sha256 "674f650512fe518feb253579ede7fe4979b45dbaf6639d6d464c37494ae84179"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.2/plugin-kit-ai_2.0.2_linux_amd64.tar.gz"
      sha256 "ff499b5f6f6a5795567bfa8139ba7755d51b9832dce8a565eecaacffcc409ca7"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
