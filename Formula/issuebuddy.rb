class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.102.tar.gz"
      sha256 "3f88e3e43b783c712bfae48cbfa07c3b044feb7ca6e45c345d63d05ce8401788"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.102.tar.gz"
      sha256 "b5d387497ff30ed678fb193524ee81b26155da6e13c12bd3dacaa08444c827c3"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
