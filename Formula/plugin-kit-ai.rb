class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.1/plugin-kit-ai_1.1.1_darwin_arm64.tar.gz"
      sha256 "2db664d5900befa47f00e08a6389ff7f17b329b3409c4239204fc26b145f032f"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.1/plugin-kit-ai_1.1.1_darwin_amd64.tar.gz"
      sha256 "523a3d0411257682427d78e054ed68295138123f13597c6d5dc71396e0087186"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.1/plugin-kit-ai_1.1.1_linux_arm64.tar.gz"
      sha256 "17686a3a21adb65c351208179d0dd9799761749d77fd2ca21d012c3c64a64c6d"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.1/plugin-kit-ai_1.1.1_linux_amd64.tar.gz"
      sha256 "1f8dd5a117362f110fb0f6655a282967caf8fb4dea56d1f72baa496c7bced064"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
