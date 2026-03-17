class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.180"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.180.tar.gz"
      sha256 "a028761c5b03f566ad6db1ae1e043fff20a526ebe652db5c522f728e6739be19"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.180.tar.gz"
      sha256 "64ffe38ce69e6683bfc399bef584c11ab6f895c4a4929ca36aaa95743996d3ed"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
