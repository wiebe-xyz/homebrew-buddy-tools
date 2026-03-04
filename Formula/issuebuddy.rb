class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.147"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.147.tar.gz"
      sha256 "37a99f0ef21a5d4d2dfb369c5eef634a8030dc4ac22982c36f07a9bdbe28c0fb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.147.tar.gz"
      sha256 "ce4154f8c524ce3a35bbad655d31c0092044f9c9b1b5582b51711ea2bfc4500a"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
