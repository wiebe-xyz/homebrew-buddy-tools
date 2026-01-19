class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.84"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.84.tar.gz"
      sha256 "924f0e8ab40f557bb2e429f7c511d2431183c0e4d9459dbd2b82484024fcb43b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.84.tar.gz"
      sha256 "1a95d8246bc4e1875b59eaffbcc04939d48cba5bd3498245c58357bea07a4779"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
