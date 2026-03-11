class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.177"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.177.tar.gz"
      sha256 "1fd0004edb6e403b0b5b874a3c2d67113f9e1330c54ee3e3bbb36a4574bf5dfe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.177.tar.gz"
      sha256 "2dea13c908e8497ff46af6efc5b428e55544b1917dd6f12a5bbcecccce01ef7d"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
