class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.144"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.144.tar.gz"
      sha256 "7a5a45338b531e4760d66d3ec323f6f186a2eb66c8d16935e7cb8c1dfc091ac7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.144.tar.gz"
      sha256 "ef184c4a895ce455fe5b99d6405c05711e4f5e2c4d8338d95ac56364b460f019"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
