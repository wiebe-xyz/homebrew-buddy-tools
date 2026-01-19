class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.81"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.81.tar.gz"
      sha256 "7c8a360055a26665759e4959ed55245e60268c33d92b9128bb1bc93fd9d2c934"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.81.tar.gz"
      sha256 "c03bb7cd0ddc10ab88f5ccf7d2178a103a55d58f43bbc112bf5eb5b6d6ca27ac"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
