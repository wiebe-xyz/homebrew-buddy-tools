class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.107.tar.gz"
      sha256 "2577e01a5e243b842b296d918818330fd1e34d966adc5c7326980df8918930cc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.107.tar.gz"
      sha256 "61e7bae554b282db3f6bf6d89f1c9f2b8c37ec5b7782537a988f05a233d3181b"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
