class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.86"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.86.tar.gz"
      sha256 "873b759a336e07c0e6459ce026d05e9352e69c82e0fc4ddb690e83b49a1045c2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.86.tar.gz"
      sha256 "209e8a73e55ff9b9f2efe23c317f8abf9707cdd648bf7b35f1c833419cf1db83"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
