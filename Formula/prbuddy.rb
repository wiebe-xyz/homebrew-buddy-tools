class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.200"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.200.tar.gz"
      sha256 "b29ae1bce751a569a8ba86c5e0d430d30c3a81066aa78afd60d60415dc4882ab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.200.tar.gz"
      sha256 "de819185a8b2195aa3b9b0f673552fc46fad9679a53191a4a923687dacc69685"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
