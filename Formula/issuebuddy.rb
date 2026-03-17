class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.183"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.183.tar.gz"
      sha256 "bb1fd07a4b4add2341936adf7da2e08f9c678945ded0af19e5b4b5c49f9e2c43"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.183.tar.gz"
      sha256 "3274d3e8ccba2d6962fbe58dd623f2ce1139a296b933dab3a4420ccf260e9344"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
