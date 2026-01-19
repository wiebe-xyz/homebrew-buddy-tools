class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.82"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.82.tar.gz"
      sha256 "ad090ed6c23e423e8c33c71012af4b2642bb0038d62ca5f2dd8db38ac52e952f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.82.tar.gz"
      sha256 "7b3069540020c091f9b8c56b646661d32989d1b01d353d5a2ebce391f64a570d"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
