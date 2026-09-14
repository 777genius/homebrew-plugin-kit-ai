class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "2.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.5/plugin-kit-ai_2.0.5_darwin_arm64.tar.gz"
      sha256 "4202a3f93547ece8d68d8046e1016cbf6d075d318b86aeba1c71e7a203988315"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.5/plugin-kit-ai_2.0.5_darwin_amd64.tar.gz"
      sha256 "057de8170fd6a2ba393a6a6cc0dc982eeb2c21d4d77d6921ddab1f9d258512ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.5/plugin-kit-ai_2.0.5_linux_arm64.tar.gz"
      sha256 "cdb606d0074faf764553e0c23c2dd925948d47ffd483ee5a9ba092ef626e3c29"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/plugin-kit-ai-v2.0.5/plugin-kit-ai_2.0.5_linux_amd64.tar.gz"
      sha256 "819b73b6c012aa2f413fd0a618b343a1adb214b2e87dfde79de38f89564c0ef0"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
