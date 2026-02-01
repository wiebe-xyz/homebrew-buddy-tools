class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.100.tar.gz"
      sha256 "25aa3ee7eec3175e4bb36c04c77fe3f956cfe4b5f56d5b52b60d0df331f17638"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.100.tar.gz"
      sha256 "895c40d62077ba94161900be1d85139a6fe5ef3ab72d5e66ffb1aaa8f5c1a731"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
