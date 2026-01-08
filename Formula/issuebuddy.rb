class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64.tar.gz"
      sha256 "4b6197c74fcb5cc22679c9cf30c0624e28ba30598861e5f95eff2e3589fa3dd5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64.tar.gz"
      sha256 "8b690977fc27dc7d33f4157fd47f106b6a2f06565bae0d667ab18c18e783b3dc"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
