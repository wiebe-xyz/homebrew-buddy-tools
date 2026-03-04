class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.148"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.148.tar.gz"
      sha256 "847aedbd5b53ce3859ffea82ea7b6154efb103e1f900ed1616588c692b6e1ebd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.148.tar.gz"
      sha256 "8af5f975b6f69432d6ac6d8c9ffcb88735364c39a6524c3474eb58d2a8342f0e"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
