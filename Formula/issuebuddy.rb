class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.135"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.135.tar.gz"
      sha256 "cad041ef482e73c941c31ea1ab03c9dc62bdfc4d70e039d997f5ac0bcb8bf426"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.135.tar.gz"
      sha256 "546ca4231b4d517aad0ad6ca44d8ad5aa74a71a2eb91bd8c220443d79613c919"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
