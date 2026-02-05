class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.111.tar.gz"
      sha256 "9552c4415c0161b3a0da294cbabfe4ecf5f865a39f6d925d777684ef793f0afd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.111.tar.gz"
      sha256 "a355e4d976f85ed14bd34d44a41d00876d85e9622bdb632f845d06fd54a65587"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
