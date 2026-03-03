class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.143"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.143.tar.gz"
      sha256 "5495bb4ddd85574fc5b2430946efe31ee2b05008f8fb836cc6bf15009701b176"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.143.tar.gz"
      sha256 "6523438e1912a38450c9b15b57e6623456195ffd54dedec225fa8f36ee8e5c6d"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
