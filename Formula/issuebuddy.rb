class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.92.tar.gz"
      sha256 "4aae38123530fc9f41cf8b245eefdc6fcb85f8ac3287e58cb0b31bb47ee49016"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.92.tar.gz"
      sha256 "b073a80deca4b0c6820f2e1403cea591042da855a2026ae315611c5846f6fd81"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
