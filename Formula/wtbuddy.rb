class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.86"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.86.tar.gz"
      sha256 "489d3fc2cf1501a9a6a50f7ba5cc27a2a12d271668614075d18c0b8dc986d04e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.86.tar.gz"
      sha256 "c7c18b84416e3993b9238558809bc9d6ac7492dbf48e7f180037567bc03a2b15"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
