class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.78"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.78.tar.gz"
      sha256 "b638a1ab1effbd59b08bd1cde34276f03f4513c57b68fd37aa7806859fbd531a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.78.tar.gz"
      sha256 "fd51a0b9e68ceaa87f961e986e26a24583e107724612a24256035832ba6aefac"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
