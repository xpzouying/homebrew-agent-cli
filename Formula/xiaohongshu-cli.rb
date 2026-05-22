class XiaohongshuCli < Formula
  desc "Browser-driven Xiaohongshu automation CLI (requires kimi-webbridge)"
  homepage "https://www.kimi.com/zh-cn/features/webbridge"
  version "1.9.10"

  on_macos do
    on_arm do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/xiaohongshu-cli-v#{version}/xiaohongshu-cli-v#{version}-darwin-arm64.tar.gz"
      sha256 "80d07eb7cf3021892bdd506aaf5307bd40ddaba8ce3b6d30c39bf9f6e1321c53"
    end
    on_intel do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/xiaohongshu-cli-v#{version}/xiaohongshu-cli-v#{version}-darwin-amd64.tar.gz"
      sha256 "66c27fd0944fb7fae1b81f2b8096d712429845fc08546131b80449de66a76e43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/xiaohongshu-cli-v#{version}/xiaohongshu-cli-v#{version}-linux-amd64.tar.gz"
      sha256 "5ebaea9964016dc0aa9b03c43fc1c87703a7a4152a0da1a1ba31c6b167efb291"
    end
    on_arm do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/xiaohongshu-cli-v#{version}/xiaohongshu-cli-v#{version}-linux-arm64.tar.gz"
      sha256 "d2752c62d8f42eb0006fc61b2e02c46a45fafe8df715f535e477ba66d58b05a7"
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
