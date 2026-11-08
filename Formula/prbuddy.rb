class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.216"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.216.tar.gz"
      sha256 "46b8adf98d7bdb7b7419c017571e689742d7e0bd85641f835a33f116b5fb0194"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.216.tar.gz"
      sha256 "c8051a92bb88b2ecfbc4422dc86f5979c5f04256c7bb94c3d011dd443919a957"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
