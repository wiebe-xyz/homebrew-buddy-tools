class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.91.tar.gz"
      sha256 "c2b735bcf4ec67a87665d651a2fbfcc86a499b01666c15b0392c15c83df628ee"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.91.tar.gz"
      sha256 "12c268fa2b20c3fd1a6cc137c746f6afdcc8efae2cece5dabda988979b27ecc0"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
