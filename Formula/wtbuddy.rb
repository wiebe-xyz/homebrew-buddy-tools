class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.137"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.137.tar.gz"
      sha256 "ffec818811f45a13d589bfab8b47af7869a5f93460a5e984389cfc0c68c3dbb2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.137.tar.gz"
      sha256 "bd85beb06cfa0db572b3b48aac38a822d2afd6c9a306e6a1a074e5af6b4a864b"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
