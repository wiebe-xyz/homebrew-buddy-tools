class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.91.tar.gz"
      sha256 "6ed0fd5a1f3c8d0dd067c443c7355d199fbafa502521b7bda7c317b431a16695"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.91.tar.gz"
      sha256 "398b1284d177d0d9c673ddaad2fb16a5117807f1c5ad22b0a8f940e0e9da312c"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
