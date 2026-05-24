class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.3/plugin-kit-ai_1.2.3_darwin_arm64.tar.gz"
      sha256 "736123d74b6a48ef7e141e9652c13b45aa29978f50a45db185c003405f503d01"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.3/plugin-kit-ai_1.2.3_darwin_amd64.tar.gz"
      sha256 "3f237c5df787302841e8c1121004440867f8b1350cb7e93d9044f788c45f61ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.3/plugin-kit-ai_1.2.3_linux_arm64.tar.gz"
      sha256 "d8c326a754fc79b81686df0e0ed4b38790533e33a0f67df93a0e627a66015540"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.3/plugin-kit-ai_1.2.3_linux_amd64.tar.gz"
      sha256 "c9dcdc7f115b977560fff289547d79475e4fdf5b77d0125e53a8cf941625c047"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
