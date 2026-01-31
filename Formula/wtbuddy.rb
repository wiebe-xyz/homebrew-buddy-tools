class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.95"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.95.tar.gz"
      sha256 "ce5d0677602d9b3c45fc4799de433daa6a063501afa0d1d7b20cf9de771c0405"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.95.tar.gz"
      sha256 "d6245a442ad1d56b36677921de27ad72946219a09635a1acb2bf49e426db1b61"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
