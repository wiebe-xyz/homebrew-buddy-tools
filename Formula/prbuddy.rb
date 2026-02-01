class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.100.tar.gz"
      sha256 "5945249d3597b09f3dba28ca5a8ddc5f6e1ed2b16265629ec7b3084e0941f0df"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.100.tar.gz"
      sha256 "1b23a985f51d3f4acd62f83ac264a7f224ae0754b17d2c3874d161ae6ff2f084"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
