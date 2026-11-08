class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.218"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.218.tar.gz"
      sha256 "1649d14c77f7196b693962a59e64ec9098ac3b4ccace1ba4f903032fceb350b2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.218.tar.gz"
      sha256 "6c3e6d9165df29e7ba07126d8a8006a9e9d8ff90f0fc0a74cb4193eb5bafc19c"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
