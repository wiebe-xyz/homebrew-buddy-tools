class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.197"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.197.tar.gz"
      sha256 "63d00a9c7127422847b92b09aa59493b74019966b31a1b6ff8e73d47e58d8e47"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.197.tar.gz"
      sha256 "bdabb59a4ede88ae47de26298870369f053ea6ba7e791ae2b5c8c3343e04dd20"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
