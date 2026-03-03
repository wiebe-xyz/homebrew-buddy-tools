class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.141"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.141.tar.gz"
      sha256 "faf5e45a96e7a2fe7f41be18f7a4a6135dcd23eab0b40641ec7137642aa12b6b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.141.tar.gz"
      sha256 "a918d772fdff3a37b4688e67e9c3b4ecd2ac1e06dfad2496fb5864a8f3a9db97"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
