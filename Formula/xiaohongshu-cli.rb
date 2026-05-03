class XiaohongshuCli < Formula
  desc "Browser-driven Xiaohongshu automation CLI (requires kimi-webbridge)"
  homepage "https://www.kimi.com/zh-cn/features/webbridge"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/xiaohongshu-cli-v#{version}/xiaohongshu-cli-v#{version}-darwin-arm64.tar.gz"
      sha256 "9866b64680ddfc0f93cbf206a424a0befdb45d4a64e700d63e4567ce1a045aab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/xiaohongshu-cli-v#{version}/xiaohongshu-cli-v#{version}-linux-amd64.tar.gz"
      sha256 "80ba87f51997913e3cf7e5fe10f8814b1f6232f46444873b7219ca4304f5af1b"
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
