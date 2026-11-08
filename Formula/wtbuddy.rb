class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.210"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.210.tar.gz"
      sha256 "7adcb9c2f81af83acb64428fc1d814575db9b671799fa28dd70725f59c5cd355"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.210.tar.gz"
      sha256 "c7765bc79a1cf54967d1c60315a21644f574806a69ed664f00aa467a0d3f6bf8"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
