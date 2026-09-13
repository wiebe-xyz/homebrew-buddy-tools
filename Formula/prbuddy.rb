class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.201"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.201.tar.gz"
      sha256 "37c134d6ea489ae6d06b4b9e17dc133793ba55322740cbe8cd9c35908a1e6023"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.201.tar.gz"
      sha256 "048566a106816901fd7c34270bfdcfd60eddd32087cfe056190dbfcf67df90bf"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
