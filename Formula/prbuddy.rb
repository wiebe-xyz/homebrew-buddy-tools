class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.148"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.148.tar.gz"
      sha256 "02cab87b6d99e8843bdaa033232f60e490eeafcdcb6fc17aa2aaf5143d62d97a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.148.tar.gz"
      sha256 "52b297e04d1a24e3aed99b77669cb10cc1967352739b3471114b8e8160b1726c"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
