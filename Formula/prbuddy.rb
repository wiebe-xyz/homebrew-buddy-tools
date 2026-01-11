class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.66.tar.gz"
      sha256 "bbb2de053bb72667c574e05c52dc935ecdce013a2563ecae0c38cb86f4c2ecec"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.66.tar.gz"
      sha256 "3f9088aba4b0075490c2225ec4903e312e836e89d7d49cb00bc842ec03f3d855"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
