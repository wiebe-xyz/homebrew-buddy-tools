class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.111.tar.gz"
      sha256 "10a6ac1f320670ee87651ec1859b8d686f4c23f68dd0a27b475ce04ba5105c97"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.111.tar.gz"
      sha256 "06fffea9fa4dc0abe8430188997e22301b56454af592aa34df92abdaba19953a"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
