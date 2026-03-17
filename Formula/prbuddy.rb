class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.181"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.181.tar.gz"
      sha256 "83864a6f8ccbdf1bcfdd2bda908df3109a1fe6f96c5323e953306509819205d4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.181.tar.gz"
      sha256 "04b3807d81d1c0fdb4bc9c6dc7a101f7204aad9ab018456550502406fa48b28b"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
