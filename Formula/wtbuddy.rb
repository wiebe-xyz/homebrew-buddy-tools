class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.212"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.212.tar.gz"
      sha256 "b1e81ab3dfc475cdbb33f961b0f3178c24add9744bc9a9ae6a38e19e9a8b9387"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.212.tar.gz"
      sha256 "5ab9cc6ee0da979af69b024a48e6ade57b1a0face602c5a10b45def8699885d4"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
