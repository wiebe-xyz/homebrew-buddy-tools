class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.211"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.211.tar.gz"
      sha256 "fb8c427bf58cfa9ff5b72bee2601e7989a823e1077974d3bc0f0890344625176"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.211.tar.gz"
      sha256 "50df2bfa7ab923c2b4fe69c9ab423288bad772eb12cc071efa8d23fcc7a98968"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
