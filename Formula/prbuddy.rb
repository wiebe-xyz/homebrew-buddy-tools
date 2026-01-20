class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.88"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.88.tar.gz"
      sha256 "fbe44f48b88375ed7d7da0874fcae6edc9b2fce46f79277a7be75cb2f4037a3f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.88.tar.gz"
      sha256 "ad0ef732b40b321d7b80de720e5189d0185481671db0f87f200efcd8265a10c2"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
