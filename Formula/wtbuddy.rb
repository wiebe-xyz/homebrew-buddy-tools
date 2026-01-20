class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.88"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.88.tar.gz"
      sha256 "5e9f9ba9e67436d0796fd7621e5c58d57632d442eb7743f8d640835b3ea4510c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.88.tar.gz"
      sha256 "681d64f22bbb753adf94a0f8297cd33c7a95a28ea00db941c72ca85f30578da2"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
