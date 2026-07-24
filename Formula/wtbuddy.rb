class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.193"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.193.tar.gz"
      sha256 "4e75c8f940c6b68c414c39ef48763c8b0941870e0098a4a97c841d2aadce78f6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.193.tar.gz"
      sha256 "1511278d61389eb46164e0c82275bda441ca4fbc8bdf9d74d6acbca85c2dc0cf"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
