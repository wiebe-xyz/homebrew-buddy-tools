class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.118"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.118.tar.gz"
      sha256 "33a1a79894d6b6d95c228f10016b033b3b8927b89ea448dfafa04e86b1d03b18"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.118.tar.gz"
      sha256 "e9b5f60ee750c26b4aaf5e934ad051639c8855079f721994801340c2a2595c0d"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
