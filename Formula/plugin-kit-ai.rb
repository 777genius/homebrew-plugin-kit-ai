class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.4/plugin-kit-ai_1.2.4_darwin_arm64.tar.gz"
      sha256 "6812086dec43958508efb2945afd06c1b1ec0b7eac8ba0119790e06a9fed8bb1"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.4/plugin-kit-ai_1.2.4_darwin_amd64.tar.gz"
      sha256 "f914226c7ebf8930e751e14da58bc4cd23eeaad4cc7f10fc31629a8233c7c6dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.4/plugin-kit-ai_1.2.4_linux_arm64.tar.gz"
      sha256 "46dcb07cd7d7a39fcc095ab3a38270bcdb5e524dad149fbc9d381396f163815b"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.4/plugin-kit-ai_1.2.4_linux_amd64.tar.gz"
      sha256 "fd06f16292ffcc34f5436923e59039930668e5bbfb07e82ef589cf9d3b39822a"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
