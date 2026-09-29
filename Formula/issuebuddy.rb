class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.205"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.205.tar.gz"
      sha256 "37e1bc2fb75cfb7289f1c53161cc5bf2be10e5ba96baef9e28e86e5de2d2c0f0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.205.tar.gz"
      sha256 "9f53c7c3599ad146858ccc959ef451148c698a6e48732a32f68c1b2a0a3dd22f"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
