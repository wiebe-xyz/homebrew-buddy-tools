class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.72.tar.gz"
      sha256 "1395e0e6536db8fc4e916f33742051fb3f03cb534d7a01c9f02747c39f449303"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.72.tar.gz"
      sha256 "8738886509a507a70767bafccb9f9f3ba6e9da7f6aa9a8863fbbf5c4ca89d216"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
