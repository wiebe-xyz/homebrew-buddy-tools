class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.221"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.221.tar.gz"
      sha256 "ee4849be35fe3b3dc580d137b29314c250e1e7af2f210db4d6bfed8e7afc424a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.221.tar.gz"
      sha256 "cfbf832f1b002a7c7db2527959e8ccdfa1390e3d343d0fdf7d9b5757cd18663d"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
