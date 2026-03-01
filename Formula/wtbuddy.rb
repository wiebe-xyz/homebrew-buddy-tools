class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.136"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.136.tar.gz"
      sha256 "151228ea4b945aa9d0c63282ee5db4ffe4beec3c0b7745540346c77f36210602"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.136.tar.gz"
      sha256 "08b8b462fc39668a1ddd21e3e81d0660ae9cbf4918696ee624a65e443c3a66d3"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
