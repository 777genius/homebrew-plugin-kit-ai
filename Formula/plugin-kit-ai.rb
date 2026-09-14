class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "2.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.3/plugin-kit-ai_2.0.3_darwin_arm64.tar.gz"
      sha256 "7a9a09a9889f4d088e7846bfc324f80b2ab1f53448a4eb4cc6ec85b85ac989a8"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.3/plugin-kit-ai_2.0.3_darwin_amd64.tar.gz"
      sha256 "6e2960f78c95bfbdf0887cefdb4a2ce4fc594b1383afa8484cf5e0362619e46b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.3/plugin-kit-ai_2.0.3_linux_arm64.tar.gz"
      sha256 "0103c76e24e773a6444e2a9a4d13cbbca73cac6beed89a27e1bd18a0f7daf437"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.3/plugin-kit-ai_2.0.3_linux_amd64.tar.gz"
      sha256 "d33f41822931cb0a2b2cfc61ff3657683000a7474ce4a77affd602cf24f9770b"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
