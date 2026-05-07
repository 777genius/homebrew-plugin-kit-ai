class PluginKitAi < Formula
  desc "AI CLI plugin runtime with a first-class Go SDK"
  homepage "https://github.com/777genius/plugin-kit-ai"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.0/plugin-kit-ai_1.2.0_darwin_arm64.tar.gz"
      sha256 "9ef4e36986338362b7e5eecae4fa2b90a5ef6d9ad04d9cc6b937a61e824cddb6"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.0/plugin-kit-ai_1.2.0_darwin_amd64.tar.gz"
      sha256 "720b5ff2ba7835f806ddbec97c140e3395b5e66f9cbe1a9baba65b9a414815ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.0/plugin-kit-ai_1.2.0_linux_arm64.tar.gz"
      sha256 "9ae76399af587d0d005df3bc6e7dd499648777473aca89e02c379a7c278a811f"
    else
      url "https://github.com/777genius/plugin-kit-ai/releases/download/v1.2.0/plugin-kit-ai_1.2.0_linux_amd64.tar.gz"
      sha256 "ce126430ca0325a965cf3bd515f7a16fe6129e7204767cb8199c83725e4bc786"
    end
  end

  def install
    bin.install "plugin-kit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plugin-kit-ai version")
  end
end
