class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.101.tar.gz"
      sha256 "71e01d2d38c21a749c2a79bd33913c448a56610c6a84ef3fc000d4dfc82018da"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.101.tar.gz"
      sha256 "8a9d63aad68a74375f189a6ae6a7dc596dd66b4594afbac04166a80ad2e2a66c"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
