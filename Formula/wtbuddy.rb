class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.75"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.75.tar.gz"
      sha256 "d112f99dcde57290c61076b1d52a1f5d9d8ed82e54686cdaa9a9041033034fdc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.75.tar.gz"
      sha256 "5e36f8291e3fd935da1266ce10d15e7f056e036162c908770eb20e1fca6352a5"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
