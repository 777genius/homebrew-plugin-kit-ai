class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.0/plugin-kit-ai_1.1.0_darwin_arm64.tar.gz"
      sha256 "ffd7efd53a02cfea07c9a0f75503c9ac42509b68d0c7745815b3d99e30225f07"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.0/plugin-kit-ai_1.1.0_darwin_amd64.tar.gz"
      sha256 "7119543d6e8dc49c29c3c95a989aa1f6a344a1f75ae67cf7f39b902c4e94794f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.0/plugin-kit-ai_1.1.0_linux_arm64.tar.gz"
      sha256 "2b3901ddc7a4fa062fb07b12498f124dccd9e5647edbdc038124367bf9fa442c"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.1.0/plugin-kit-ai_1.1.0_linux_amd64.tar.gz"
      sha256 "2c589b86038b962b45f6a160aa8e8f16997cc70587a796a19976416a93215d6e"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
