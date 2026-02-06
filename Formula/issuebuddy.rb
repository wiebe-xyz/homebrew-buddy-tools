class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.122"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.122.tar.gz"
      sha256 "4b00358d5e4da8c23d84ec4162a5c6f7fd5ed942abf0e0bc10d0baa028b39595"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.122.tar.gz"
      sha256 "413615822df879c38ffc7879629d0c4400fbde468aba69817ecdedc12c2a80d5"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
