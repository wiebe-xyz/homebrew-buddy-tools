class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.145"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.145.tar.gz"
      sha256 "5bc37d9fa11783b0873a14e5d9f7b96598ef544b1a249fa716e512d2894ff07c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.145.tar.gz"
      sha256 "9ea4d09ee7df869c6d34289fe9c3977ec9df1f20028cc9ef871d6418a91e79a0"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
