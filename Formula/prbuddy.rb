class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.209"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.209.tar.gz"
      sha256 "fa921f01a064de1a914e4316b97267e676978925d1aa543b8eea0f2f53ee0ddb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.209.tar.gz"
      sha256 "b3940bfe730c6bb8af895f0bc84eebcb0d6c7c4c5784242fb32622aa8a175c38"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
