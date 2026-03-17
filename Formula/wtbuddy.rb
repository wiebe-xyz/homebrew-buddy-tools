class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.181"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.181.tar.gz"
      sha256 "f2a7f519a1424814ba481f27598b562cbd21131b4a0f5b98b15bcf6cbce04e57"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.181.tar.gz"
      sha256 "a82390d96ff580ad2bea4f70634c004b344b67f1ff97ed6f7c206eac5515c670"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
