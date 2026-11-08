class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.220"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.220.tar.gz"
      sha256 "37f0348c8be30f1228260587ec3d44666c094aadd12bf38dea7698360eb369b5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.220.tar.gz"
      sha256 "eb18d4dc5d96fa2d38efeb41db2859b706ffeea89175bc1223fea5a057f8ef73"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
