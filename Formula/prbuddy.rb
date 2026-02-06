class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.115"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.115.tar.gz"
      sha256 "8293ffa124b470362b97fa3e9b728c2506c4f64f23b5d5f88696f2f830f0a20c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.115.tar.gz"
      sha256 "8a4aca8046751a9e8b73bca95c1c70fca3abce6d3ed5c5e02c175a83529a1975"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
