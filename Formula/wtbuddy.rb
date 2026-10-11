class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.206"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.206.tar.gz"
      sha256 "0408f25af7fd8a34cde2fe565ac8986ab0ce6536111ff83bb4eda5c5d4aa54d7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.206.tar.gz"
      sha256 "2a8218a3f3ca25dd62440efed6c183e7cd30e2c0ac855235cd7f351edf389401"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
