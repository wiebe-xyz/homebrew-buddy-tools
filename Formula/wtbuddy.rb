class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.76"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.76.tar.gz"
      sha256 "6bdc2812e7377d671fd6b9b5a8d92d0ffc0489def2e3388b041575e624eaf33e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.76.tar.gz"
      sha256 "e75e09a5c5c92496e7e0b24d97eba902c3e3ea6066f7cfb0d800ca8a1d4a60b7"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
