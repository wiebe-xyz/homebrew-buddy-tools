class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.110.tar.gz"
      sha256 "f3451a9252353bfc2362d12071294b53d3ad2203cc5cdf8cbb16bded5de9caea"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.110.tar.gz"
      sha256 "fe9c34abe0b87da32d973b6a2e5427f86aa45d85ed0ae678fffd4641dbbd500a"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
