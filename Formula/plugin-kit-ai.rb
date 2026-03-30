class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.5/plugin-kit-ai_1.0.5_darwin_arm64.tar.gz"
      sha256 "693ab07b5822d2ad32aba25ac0695982ffcadd625d3e656150984322ba1e3937"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.5/plugin-kit-ai_1.0.5_darwin_amd64.tar.gz"
      sha256 "5428c55f3574f5013a772cb68da77acd410a56d74163744210181a27a957c030"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.5/plugin-kit-ai_1.0.5_linux_arm64.tar.gz"
      sha256 "efa55b3cc11b1101cc2972747f359edf21e9fd9482d11a25831df648180c5b54"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.5/plugin-kit-ai_1.0.5_linux_amd64.tar.gz"
      sha256 "5e749a1e7639dc4737735281d6f99a5b60094122db02cf35047f9f4a7dff7906"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
