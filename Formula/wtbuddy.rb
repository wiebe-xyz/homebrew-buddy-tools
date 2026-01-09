class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.61"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.61.tar.gz"
      sha256 "f0553531023174cb3a2969fd3b47cdb91cfa92d9b20fba663b9fbe86937366f5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.61.tar.gz"
      sha256 "657aba73e823fbc382a613cfb64856d88baa7c402854ec190b985cfe20b52296"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
