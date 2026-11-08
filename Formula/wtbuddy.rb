class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.217"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.217.tar.gz"
      sha256 "999fc2e66d2a4b4390f49ec2ee472c9eb99fdb66566ed9b0dabfe9456b34245a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.217.tar.gz"
      sha256 "a6584006614aa942a8b3183f8ed54850561bdc546671da8f0c837c4fb9ed6573"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
