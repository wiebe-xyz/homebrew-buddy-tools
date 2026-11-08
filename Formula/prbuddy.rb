class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.215"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.215.tar.gz"
      sha256 "ba38e387e6cad4968c650984367c467d91f764eec1601bbb0e9ae0fa78f05c3c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.215.tar.gz"
      sha256 "4ebb78518a4b30b17a1242b9aa78865ba391d8d7ac1873565e3d7f197582f177"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
