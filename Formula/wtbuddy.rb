class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.68.tar.gz"
      sha256 "2499cb3a733c3cae8105ba26974f37968099422c7b34eb916ee919e1fb1e0867"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.68.tar.gz"
      sha256 "47592f84fc6dfbfe11129e9121df8e6bc930a89bd4c104b67379369ffaf7b9da"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
