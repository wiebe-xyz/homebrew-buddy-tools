class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.128"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.128.tar.gz"
      sha256 "7cb3f244341f6b6fd60e6252a4e66957f4596a6eaa3f3bc8d386e7637b4815a7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.128.tar.gz"
      sha256 "4e62fab094f8607cc1230be30d0e25fd144895921d28ab64746de66f04911cb8"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
