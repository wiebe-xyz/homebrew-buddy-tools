class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64.tar.gz"
      sha256 "c28ef6d21ea1b25c9f5e823cac342f94a84a5fe7ea96db18bee91241dad11607"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64.tar.gz"
      sha256 "563e4dd6c69ac17449cc51f483caa072da6ee6967b66c2de39007314959d2ab3"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
