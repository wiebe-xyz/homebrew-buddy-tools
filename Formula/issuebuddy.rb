class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.75"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.75.tar.gz"
      sha256 "6b1468607fb9851b37dd94914a4af5a6d97ed579d1c957b8fdea0208cec9c912"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.75.tar.gz"
      sha256 "260f0ef922ffa47f67b62e4444dbb1e51c427b3b9630b930236a265882f2ce52"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
