class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.211"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.211.tar.gz"
      sha256 "b855bff5b1cdf6d6709c92f234d388baa1fce9c354ba09c4e4039e0794df9aa6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.211.tar.gz"
      sha256 "9eeef1386d54a40eefd6af2ce66adbd18e8a54937e1dd0200a9d280a36ca285e"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
