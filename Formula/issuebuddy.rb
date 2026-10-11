class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.207"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.207.tar.gz"
      sha256 "d2ac1d7aa3458ecf037c04c4543fc8c49050dfef02b512290992bd0326452751"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.207.tar.gz"
      sha256 "c3073dec61bf43e86ac7123c4b04deaa18a8d63a6d3afbfd78eb3eed02fe7bcc"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
