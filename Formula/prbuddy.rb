class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.76"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.76.tar.gz"
      sha256 "655da86b9977c12153ac28f0ca01e7bed05de870085617c6ceb1429b9a4a3408"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.76.tar.gz"
      sha256 "0ef205d394cf5f8fb5838b96bc0f15e052e5b89c2f4e5d00cf4a9d3784b4d5cd"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
