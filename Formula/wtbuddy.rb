class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.178"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.178.tar.gz"
      sha256 "c6f2a3bf0c5192b7331234156a90f1a8a618e6614cfb578493e5a53c023be3cf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.178.tar.gz"
      sha256 "d64d13e4cd36c5fe27cad559317d4c2a667f5707115020f1eb40d253d90ecd0e"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
