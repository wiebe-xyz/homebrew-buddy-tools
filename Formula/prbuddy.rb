class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.102.tar.gz"
      sha256 "8257477ee09c37890d7ff0f40c52267e3836233cef3ebbdd1f0f51aea05ed4d4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.102.tar.gz"
      sha256 "b6f10066c3bc7a1e7fa23da9a78db198bf0ea5392da084961067528b20d4a5f2"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
