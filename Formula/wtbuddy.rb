class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.77"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.77.tar.gz"
      sha256 "052b727d301f465136342b4abed21eba889ea92a9b6ce637c57d072ec46f0a5c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.77.tar.gz"
      sha256 "0039ac61b376b2efb7ded7fd30b5c7ce0a0d6fd5bf62c14ed7a9f2cbced1d702"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
