class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.141"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.141.tar.gz"
      sha256 "5a68381a1c68af2360413fdffb9a5b247fd75d025112fd5f41214cd037f3304d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.141.tar.gz"
      sha256 "1ef37ff9e7406c26aef62245e18f8e1e24d518f47d5a5f7a717d1f2446d3b88f"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
