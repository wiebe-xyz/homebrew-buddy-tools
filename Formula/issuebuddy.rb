class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.208"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.208.tar.gz"
      sha256 "5850fe0767e2400096a0078521d965aec6530406848cc860e1f4f3212fa4f77d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.208.tar.gz"
      sha256 "b75d3e55ce27945ce37e41acf50a5d32c6f0fd2bcdae89af9470c4ea1bfe8877"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
