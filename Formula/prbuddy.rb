class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.208"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.208.tar.gz"
      sha256 "1cee0ef6ea31081ace13a5f3cb0b0d452da1dcee823b79e68880e6dc31a745e2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.208.tar.gz"
      sha256 "29c025f958ea50ba037c82ea639a71413078d8eae3c744da596d1f8218d60af8"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
