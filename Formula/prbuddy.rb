class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64.tar.gz"
      sha256 "f0bd7605720e0893764bcbb4f9411b3b5bf9dd33ed5eefba6fb0ecf407f14c50"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64.tar.gz"
      sha256 "35368f1e9821c6dfe5790b1e83c389ff2f8e74633f52b602fd292608199462a7"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
