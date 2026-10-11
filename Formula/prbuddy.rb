class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.207"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.207.tar.gz"
      sha256 "cf41e168086a586966e507a88e06cfb1d5835a034d2a8b8c04cdbe3d1cead535"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.207.tar.gz"
      sha256 "7377f58c1e0424ce6168d73209c8c331f65321301310b54ebe0841eb3c89f1fd"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
