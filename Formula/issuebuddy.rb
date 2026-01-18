class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.74"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.74.tar.gz"
      sha256 "7a7e59874595059d1f096fd7f2d4515b709f1ccfb8730137c1ee63d283e960b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.74.tar.gz"
      sha256 "0d5620eaf7cecd11d08b03e203c76b5ffe163b0863c6d7f5abc12114721843f7"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
