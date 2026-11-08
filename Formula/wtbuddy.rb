class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.216"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.216.tar.gz"
      sha256 "ca3bab63528057b8513136bcf33f4263b657b29d969d83ef55ecc00718bbf1b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.216.tar.gz"
      sha256 "330bd90b3b288f9200c79d24417a20dabd2d572b9ca08227b4041de87c5be6d4"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
