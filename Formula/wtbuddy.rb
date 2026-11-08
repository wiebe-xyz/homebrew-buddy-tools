class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.215"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.215.tar.gz"
      sha256 "ec9c479080bedfe0a88a6f671ca6eb5fbc0dd59913094eef387be65ea4fc4a31"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.215.tar.gz"
      sha256 "63f605176115ea0642c86c35c17766bd5c2880f5fe26452ee76732780ac20b2d"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
