class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.1/plugin-kit-ai_1.0.1_darwin_arm64.tar.gz"
      sha256 "b6ff84577e77dcf857a4b07e7807bf7bb00ff5b9fbf4f9de58ce8261aa5eaba2"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.1/plugin-kit-ai_1.0.1_darwin_amd64.tar.gz"
      sha256 "092e9c7f508c48ea946712e4c9ece44c3354e6db4a9bb0f61b3bb97da1f7b5bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.1/plugin-kit-ai_1.0.1_linux_arm64.tar.gz"
      sha256 "fdc0cbd1a73fa4aaedc04a79a6c18810c1c3a37d2dd85a8132c1fceae3b9c0b1"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.0.1/plugin-kit-ai_1.0.1_linux_amd64.tar.gz"
      sha256 "c5c279827f4d1375e62cf061c1b279f5c65083bfb83fce6f6f95643d0cc08b7a"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
