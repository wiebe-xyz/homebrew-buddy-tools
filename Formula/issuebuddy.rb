class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.216"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.216.tar.gz"
      sha256 "8c4471e10733fdc39b75f459d0b8bfcfa33222e416fc25e029212e08f5d3de4b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.216.tar.gz"
      sha256 "f0e037d70a186f4646ae0254859832a83ac3e00c748c59fd721bc80523dcc3f0"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
