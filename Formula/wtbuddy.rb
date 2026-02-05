class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.111.tar.gz"
      sha256 "b89a6e27d4b4857c1c6ec66bdbc4d903b8fa6e4a286c9e798982b73fc55ffa64"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.111.tar.gz"
      sha256 "8b31f149a991e5da7505fbfd1b64b60f213bc20d0068675509e18221e07852cb"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
