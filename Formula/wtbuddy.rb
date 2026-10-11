class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.207"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.207.tar.gz"
      sha256 "b5335b3338eb893432b416601e8b4c73e958405e8fd473e1af37a9197adcd29d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.207.tar.gz"
      sha256 "823c4679a9d236cade152c152a4e15cf473968e1cff6a9b660d7a3b35b027dd2"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
