class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.219"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.219.tar.gz"
      sha256 "935595aef788992c0adf67d892b5210701dc2fec85872b4be1a2730082bd355e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.219.tar.gz"
      sha256 "cf5a3f12da663e0f9431c86b0b80b3bdedcc2df111f4e1f00df06aa27f1b24fb"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
