class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.117"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.117.tar.gz"
      sha256 "78f7644daff9f7579f95bde46e69eb0128aa2fb49953e64d66306b93a0db3997"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.117.tar.gz"
      sha256 "47dd7bd6259b8af49e8bacad4f83ff2cdf80740950f36a5b9530a3217265c7d6"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
