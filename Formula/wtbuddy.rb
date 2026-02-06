class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.123.tar.gz"
      sha256 "fbce0d4a8445e0f3d3adb52956e37e9102d82615aee844bfa462f7131c77fe77"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.123.tar.gz"
      sha256 "134bf02b2bf32641a8eb8daf4894386e490400edb9f8dd1002363f40f0897bb2"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
