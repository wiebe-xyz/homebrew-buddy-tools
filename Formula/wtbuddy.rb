class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.209"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.209.tar.gz"
      sha256 "15769fdd3e4869c04ffb372fc3be50b94dcc8ee6e635b4e59f39253eabb067ed"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.209.tar.gz"
      sha256 "b8052d25646d5fbd6234a37f1ac7cb56b40fea6fd3920645ab1e3e14a1a63de3"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
