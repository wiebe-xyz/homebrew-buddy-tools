class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.127"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.127.tar.gz"
      sha256 "c7ed2d091fc544bc287b4d6d42fcda851fba8f43fd3a7d2bad2996c41ab69534"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.127.tar.gz"
      sha256 "4817b2bdb7bf09597014066b98271ae5b68760a364e22a0ef082b2514983d39f"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
