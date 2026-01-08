class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64.tar.gz"
      sha256 "48ae156fe9f3d82882b752ab5caf847c239205dbe9ade25a550b9f337b3e60bf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64.tar.gz"
      sha256 "4dd8e98fb06213be680297f651d1f3e4078cbab617601860bf9eadbbb97cbde6"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
