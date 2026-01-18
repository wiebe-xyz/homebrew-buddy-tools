class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.77"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.77.tar.gz"
      sha256 "dce1724ea037836ac253d41f9824564542296d63f2390a439e13be9f7e83e0c8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.77.tar.gz"
      sha256 "c7b9b7eb76be18db97923b0589e1d3a2cf782a3764eb400149e9194e0a6d6248"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
