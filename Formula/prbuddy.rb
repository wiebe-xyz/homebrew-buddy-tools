class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.116"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.116.tar.gz"
      sha256 "2c8dc5f8854d4060c33c17ca5ff746fd024b3aa59d382d93b48fa6d97f3abe20"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.116.tar.gz"
      sha256 "0bb524c5ce13d6c78a0f263e02617146cab13d8330b6e1582de4814b244c0c38"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
