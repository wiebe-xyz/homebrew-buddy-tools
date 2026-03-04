class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.145"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.145.tar.gz"
      sha256 "96202a3f4645b65a320cdd616e4a816f88ffa0106fd2d6c4831b347d3e33a9b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.145.tar.gz"
      sha256 "f8ab22cb95bab2a892c2c1b96e85fea5559f83091a0f6dadefc885ac4b01f08e"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
