class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.213"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.213.tar.gz"
      sha256 "a768a0bbb90c64e3b3d74b4a7c74790a288a1b84aa7a6c03f197cc39fc777b44"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.213.tar.gz"
      sha256 "b77fcf31869ae2d48bf76c7a54adafa4cd7dda4a264de068c6c3a8786eb1c054"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
