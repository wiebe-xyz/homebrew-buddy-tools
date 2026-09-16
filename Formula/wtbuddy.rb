class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.203"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.203.tar.gz"
      sha256 "cbf92adf8b09aba2a8ec498e7cd62618fd4fb84ee5e2aa6d3515cb2f6ccf4e1a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.203.tar.gz"
      sha256 "ff84128a44bbfd50983f5b9a5409cdad7d62c1baadc797bcfe837a86cfff3f79"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
