class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.119"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.119.tar.gz"
      sha256 "0fd10eb31668235e6ca140a46f8097b6a2f100d63a4f6c8cf6d452de270e7cc1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.119.tar.gz"
      sha256 "1567d018b5fef7b91d4b890f652bfea3b62bfc92cbdab5fdcf024078d0d06a64"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
