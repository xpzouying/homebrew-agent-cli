class XiaohongshuCli < Formula
  desc "Browser-driven Xiaohongshu automation CLI (requires kimi-webbridge)"
  homepage "https://www.kimi.com/zh-cn/features/webbridge"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/xiaohongshu-cli-v#{version}/xiaohongshu-cli-v#{version}-darwin-arm64.tar.gz"
      sha256 "facc4608fff781cad98d8dc1192de32b4750aee440fc1138e693b7037346d9a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/xiaohongshu-cli-v#{version}/xiaohongshu-cli-v#{version}-linux-amd64.tar.gz"
      sha256 "d8670f49e67caa2f44639685d4881514d94a4e084ca72823c4d928758de91aa7"
    end
  end

  def install
    bin.install "xiaohongshu-cli"
  end

  def caveats
    "Requires kimi-webbridge browser extension: https://www.kimi.com/zh-cn/features/webbridge"
  end

  test do
    system "#{bin}/xiaohongshu-cli", "--help"
  end
end
