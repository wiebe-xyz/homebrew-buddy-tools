class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.135"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.135.tar.gz"
      sha256 "7ac46ba5423fd474e40c3f297fcb97daaf51725bd671e4a9e5a66694fb6ae27b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.135.tar.gz"
      sha256 "170cd314d250817059f6bb6805aa4ec4e44ce7770254859ad1832b4cbec8ba01"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
