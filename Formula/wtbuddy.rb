class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64.tar.gz"
      sha256 "310f232e87a6705fb341437bc4e2a0addf613ac59da1a0e033deb92cf0865b6c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64.tar.gz"
      sha256 "aae6d5df4d79bec4a6fd4992de9e337aebdad306d3aa331518b714d91d54d69a"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
