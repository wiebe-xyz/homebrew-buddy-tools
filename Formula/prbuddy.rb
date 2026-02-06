class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.123.tar.gz"
      sha256 "53488078e21b06d2c0f548b1ee568d1ad11ad86731a3a9df4cce9c15fe00f098"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.123.tar.gz"
      sha256 "8b4bcf4a8292640415b2f22fbb648ebeb54fcdf42b26bce422c91639bcf09a27"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
