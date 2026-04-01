class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.191"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.191.tar.gz"
      sha256 "c5fbfc608b7fc8c3c98abe98664961a699ec2f926aab4aac387f6308b41f7ca2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.191.tar.gz"
      sha256 "fae96ba0852754ec54525b8e413dab84963f12ce54d7818f5b1aa6a758b23506"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
