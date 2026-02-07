class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.130"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.130.tar.gz"
      sha256 "d5e14a432af6025f8de3c700643cbd7f6d59ea31409b36ad40972e88b43198da"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.130.tar.gz"
      sha256 "8b1a8593b5f3b7e4ebec48ce2d929b566c4ff9548b35955d4efc97a5cf36314a"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
