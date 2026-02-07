class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.133"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.133.tar.gz"
      sha256 "e77df320978f9948cdd058e336b6f2e7f375ea09a88676c0e82d7c1d1324b8e9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.133.tar.gz"
      sha256 "5e47a3a4fdcb9f9d500f00f276ee2d9da421491e51e2436d2f787d315d4337a4"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
