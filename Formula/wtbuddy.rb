class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.73"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.73.tar.gz"
      sha256 "0d364088d7acfe25cf73969b5d30d5a95adfa9bad1f55710539bd9ac4618a3f4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.73.tar.gz"
      sha256 "66268151c7dc5e969667d5ea8c7458c72da601df4fe2003514adc7742150b79b"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
