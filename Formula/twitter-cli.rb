class TwitterCli < Formula
  desc "Browser-driven Twitter automation CLI (requires kimi-webbridge)"
  homepage "https://www.kimi.com/zh-cn/features/webbridge"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/twitter-cli-v#{version}/twitter-cli-v#{version}-darwin-arm64.tar.gz"
      sha256 "6829f36ea40045f1b15c17fb6b6ebc6ac2c26bb04987a6ef98bee4bb689a2ae7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xpzouying/homebrew-agent-cli/releases/download/twitter-cli-v#{version}/twitter-cli-v#{version}-linux-amd64.tar.gz"
      sha256 "54c2ea5140ced34dfee31341a13629205ac9d389956bafee3be43e058f4284d6"
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
