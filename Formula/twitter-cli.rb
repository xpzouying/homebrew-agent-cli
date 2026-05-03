class TwitterCli < Formula
  desc "Browser-driven Twitter automation CLI (requires kimi-webbridge)"
  homepage "https://www.kimi.com/zh-cn/features/webbridge"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/twitter-cli-v#{version}/twitter-cli-v#{version}-darwin-arm64.tar.gz"
      sha256 "37a47e40cccfbb230df08d6adec5aec8434c7841b05cea0eacdbb317905614fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/twitter-cli-v#{version}/twitter-cli-v#{version}-linux-amd64.tar.gz"
      sha256 "2d62ce8d20571ab560d8eb85ed629af0a5338bfefe797ad28fd9094762235ab8"
    end
  end

  def install
    bin.install "twitter-cli"
  end

  def caveats
    "Requires kimi-webbridge browser extension: https://www.kimi.com/zh-cn/features/webbridge"
  end

  test do
    system "#{bin}/twitter-cli", "--help"
  end
end
