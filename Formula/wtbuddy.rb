class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.142"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.142.tar.gz"
      sha256 "c3a9ab62392fb2cd69968bc23751675a2b70bfd81f911573d1198d8cb3898780"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.142.tar.gz"
      sha256 "c37701ae403c8facb5f8606cf236ebf7bf2a848ced06108bbb1eb58628f351c3"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
