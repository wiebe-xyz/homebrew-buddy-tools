class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.183"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.183.tar.gz"
      sha256 "8d30553c3df3f195754c5bcc121bebf82f6a4f43a51cc4bbc444b2e644fb861d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.183.tar.gz"
      sha256 "9fae223b2a66bbc34faf5a7cbe0191be7730f2589f5ec14201cddc04ba52ca78"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
