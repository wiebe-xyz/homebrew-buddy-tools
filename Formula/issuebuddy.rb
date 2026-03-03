class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.140"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.140.tar.gz"
      sha256 "6999f38080fafa41a36eb00eb9c1c50d6143ff344f4f08607029e129b9dc62dd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.140.tar.gz"
      sha256 "229e88aa8bc7f6baf195d0c060bd16cd060daf56b2b8741b78f5010b667e7bf5"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
