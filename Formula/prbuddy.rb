class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.143"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.143.tar.gz"
      sha256 "c21a2efc3962f38936c26d95c363bcfec4e44e07ade760b50eb92c8e01f5a941"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.143.tar.gz"
      sha256 "c214324b55bca1297764c67214f9421928a8fe095237a3b9ce33c85f5fd663bd"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
