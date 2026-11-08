class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.221"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.221.tar.gz"
      sha256 "b1d4107587d38bab76b5433340dbf1749a32e3ad3aabb84685bbaeebd09dfbc5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.221.tar.gz"
      sha256 "9e73ea0527e9944ecd673e27b11431a5d0e2aa61456172e13368f8e037350747"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
