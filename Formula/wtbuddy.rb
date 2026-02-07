class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.131"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.131.tar.gz"
      sha256 "48cf5a97a30317fd9f00f12cacdff5dc4473ddf3e6bd57462dd4c37eb1984590"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.131.tar.gz"
      sha256 "dc626253d2c4bdd45b7b3db92ca84e8778802fd5efdca3f95b7d615182622244"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
