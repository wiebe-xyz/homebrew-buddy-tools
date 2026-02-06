class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.117"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.117.tar.gz"
      sha256 "f407be9714a156e9b1c20ea38ad6f6cbb8037de5289b1480f3c3d40848e0a201"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.117.tar.gz"
      sha256 "024a5c9b92c7222e8337ee9cd08f1805117c62d25a4361e387c3dc35eb4a5752"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
