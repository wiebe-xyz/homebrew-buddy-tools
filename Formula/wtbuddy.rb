class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.67.tar.gz"
      sha256 "8301f871792cf0e15530196ac446802992a0eb385c6142bdc0452b18bdf5642c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.67.tar.gz"
      sha256 "b8fdef00a7ff5f1135f726a8b939d8ca0f4442c4b8ebbaa2365a40bca88dd8bd"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
