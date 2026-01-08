class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.58.tar.gz"
      sha256 "711caff223d2ad5832157e6a5737ae80ba84d0b874768c4872aa66c330d3a90c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.58.tar.gz"
      sha256 "e0a1ddb37ec73c202e03ff8f9c774ad7caec40698c0b02dcd7362da0ac30ba93"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
