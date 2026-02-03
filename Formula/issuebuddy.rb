class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.103.tar.gz"
      sha256 "bef3bcea296306f648012b7bd8cb0588687a3cd808cfb296bfba7f89b0c9e79c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.103.tar.gz"
      sha256 "c4c23304f8779c4882ac5c53d042b5d2d3f2c2a9a43226b1c51ca6e25a0b9099"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
