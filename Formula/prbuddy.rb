class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.113"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.113.tar.gz"
      sha256 "83c47f04c7474a90233e3e2cc46aadeda9d02fafb397689096a8f2d29833ac4c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.113.tar.gz"
      sha256 "1ea49a49dfabd4f7e549c748ba51522d95d1685e9c059cfdf24f4bdd83942626"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
