class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.126"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.126.tar.gz"
      sha256 "fdcfd8c0d133e1657be61aef5f51165bcfd338fcaec8c78b5a9a2a4f10138423"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.126.tar.gz"
      sha256 "0b58ccf5004fa38a4368326f3d7bf964d35ee573f3252088c06f547c8ea07c30"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
