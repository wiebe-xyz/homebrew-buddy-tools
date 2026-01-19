class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.78"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.78.tar.gz"
      sha256 "3fe7a27a00c5b5fe13bf2c3c27b5ba0f82691e1fe9a6d5ed689126e665ffa8a1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.78.tar.gz"
      sha256 "19a60f8e08e5ae20d9b6e02f67cd401c346a1338d7ddd3255d2cb154bc014658"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
