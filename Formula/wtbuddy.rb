class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.192"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.192.tar.gz"
      sha256 "57b4611ea1d3dfd06ec99b1aa0926b092479bf457032fd6989c432b001a96d07"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.192.tar.gz"
      sha256 "44e31fe1d88f7a17514c6ebe6e27f69658defb179b821201edcb92c9c540d9b0"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
