class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.87"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.87.tar.gz"
      sha256 "da1c5ee430a9af9782de6a41a17cfbd9a1eb2cdb9a0856fc466a90af7bdb4ab3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.87.tar.gz"
      sha256 "fe1e202f43d165e8fc87d0ace840b5de95578f58f1183cedad1de22a53fea2ca"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
