class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.217"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.217.tar.gz"
      sha256 "1701822fb417bfe894f19de3c23358d3afbca08c6dce253e3f7bcd33f0d73de2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.217.tar.gz"
      sha256 "831dad5eb6eb0915bfcc0fd525689e88f4edb40fcdfa43da187e20108a6958d5"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
