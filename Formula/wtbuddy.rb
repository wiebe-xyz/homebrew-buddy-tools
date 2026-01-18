class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.74"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.74.tar.gz"
      sha256 "fa945691ed1dfba13be6133d0211cae0a6e174eb32ec1b63efa198141b597952"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.74.tar.gz"
      sha256 "f5559ad8f233a443c1241f2c24583bab7c133665c655bfb1adf95bc399db52ed"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
