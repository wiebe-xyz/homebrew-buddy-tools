class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.203"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.203.tar.gz"
      sha256 "1a1aab7790317bb0fe0e722a9466d232ada536f846b7d47e55d35322ffc7993a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.203.tar.gz"
      sha256 "0e003594449e0df69fd0e18f9b9d33d8ed7eca637bdbc8acea78bb1ad17f17bc"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
