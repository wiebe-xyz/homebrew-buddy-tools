class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.145"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.145.tar.gz"
      sha256 "e49cc42d2248065d15f81b3e7beb5c6e184e4eb26c85c5de9ed9967d2f4cc0ec"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.145.tar.gz"
      sha256 "fffa8d3efbe3ccf3f215b68b727fc4d74fb78565a64429d5824b9a25322624f8"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
