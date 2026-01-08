class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.52"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64.tar.gz"
      sha256 "e5fdce1cb6c22ed95bd9f80741c984e8b25f9192f2da948aafe8f63b91d8f4c4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64.tar.gz"
      sha256 "e0de9059a685b38c585dcebee1183bbbe03c27a8d4aa0cb6cc453b173704027b"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
