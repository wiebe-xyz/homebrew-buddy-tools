class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.146.tar.gz"
      sha256 "3be0e0517946ab1b5ae5e49c0840fab582b9828cb83e89e7a88aa4f615324659"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.146.tar.gz"
      sha256 "fa10483450da41047b3ecfae4e5597f7f64a1016d7723859864444e2ef4249e2"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
