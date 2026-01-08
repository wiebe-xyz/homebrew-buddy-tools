class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.59.tar.gz"
      sha256 "537d8a200a740d79cef64974738eb4bed9698f598751a543b2f002ea8a9ad12c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.59.tar.gz"
      sha256 "3eabd66c69dd4d97210665c839d8c0ad7a20f2cb1bcb8e2f36b1294514ff178a"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
