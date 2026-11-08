class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.214"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.214.tar.gz"
      sha256 "5326d8a897e8550f2f9c88ecc5e7273f77431c01dc6a89db245a62965ee88ae6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.214.tar.gz"
      sha256 "5faa5e7fe28ba62470867ec0add4d01f96b42f8504e54a66240136453e77e24a"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
