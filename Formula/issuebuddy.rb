class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.175"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.175.tar.gz"
      sha256 "302ac0e6c5645a390dbce63dd574271070995d5ace4c7fc0832149fdbd149e98"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.175.tar.gz"
      sha256 "3f2d76e01492f60f86e6544f1905f11b636f1ecc35f2d7a54bac762f1474b6ef"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
