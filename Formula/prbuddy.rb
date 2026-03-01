class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.136"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.136.tar.gz"
      sha256 "9671a91f7759331d9f49309f26c13713a593626778ee1c36ac972c20e442ebfe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.136.tar.gz"
      sha256 "bd07159def2ba725e625ebcbb53724d80eb04fe9de0a836e4a4270d1dcf8b18d"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
