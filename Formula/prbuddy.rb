class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.103.tar.gz"
      sha256 "548316f61633d64f6a8ec5ca51b33cf0b827737ad5bd894537f6c431097a0161"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.103.tar.gz"
      sha256 "3468d470b49d0241834cd17e69e56daf93d8be83b2a4fc4b45f8ef1463ca9667"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
