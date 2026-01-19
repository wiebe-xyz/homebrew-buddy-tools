class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.85"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.85.tar.gz"
      sha256 "ee887e7633ee3d51ada4f1461088fb83bf618bccc1d5cd3b719e456ed35a6fb8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.85.tar.gz"
      sha256 "2410bf13d59960fd7e886d4f5687f4e4dacb4c528714b1c7ba8af895e9477030"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
