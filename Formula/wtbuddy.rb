class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.176"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.176.tar.gz"
      sha256 "4bc961453b6267226de537cda98e7629ba76718f708f786810c9d26342290a48"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.176.tar.gz"
      sha256 "d8f382e8dd3b88f545e1581df7d436212ed58ef38f6ad8ec05b7a72f53b470ef"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
