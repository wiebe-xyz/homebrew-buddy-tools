class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.121"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.121.tar.gz"
      sha256 "780d754eb40182c2dd01256f2ad9aeb3d7d6c2944d4c53731067763ed3934e57"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.121.tar.gz"
      sha256 "9b7335c40a60d70b8cc1c53ee45ceeffbe0efc1773c7bdc9811fea2fba2a7d96"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
