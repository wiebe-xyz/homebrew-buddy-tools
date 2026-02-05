class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.107.tar.gz"
      sha256 "171028769ec9ead6b39ab9f32e93b169796c482827733a14ce1ba3ba3d8bc90d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.107.tar.gz"
      sha256 "f2b6ba5db0f10a9e47b643cca046e8b10ea72ab297a608b1eacafd7d198bc534"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
