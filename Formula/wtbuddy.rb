class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.143"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.143.tar.gz"
      sha256 "dc40eac8c133bca46e0f4530a249ce9a238ab7c1fb9a3edbc79f45c074114cda"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.143.tar.gz"
      sha256 "94149fd1bf49437c4455ce53db51c39ed965834653b530941688e831ff45cde7"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
