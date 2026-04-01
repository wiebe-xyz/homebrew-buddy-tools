class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.191"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.191.tar.gz"
      sha256 "308266e658760b158cf7d307f0008e6c0fbdd4e5c29f7288cc84c8b5a96cce28"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.191.tar.gz"
      sha256 "a94232c65fcb04e1748bb202038895327d5a319c4ece043669580286a6cf2827"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
