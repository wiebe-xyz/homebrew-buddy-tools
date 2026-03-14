class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.178"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.178.tar.gz"
      sha256 "8e749056fd9b33865a3c96cc154aecc46af68527c3531e8ad90a1d77bb830e69"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.178.tar.gz"
      sha256 "434de8a5b96822aa5fcdc8506fa9e4343c3bda7549a15166d785a3982ac1707a"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
