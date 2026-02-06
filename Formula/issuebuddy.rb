class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.113"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.113.tar.gz"
      sha256 "eb79f89e4f2f62bb17d958e17c32de906bc150f63a00f80cedaf5793e5f14b5a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.113.tar.gz"
      sha256 "6dd7a0ebed8c58f34a759fb294ba99b95ac8219dfb3801be90c83294dc83385e"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
