class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.120"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.120.tar.gz"
      sha256 "acf87f91ac4ac95651862e467603ce11bb6ed1138d6b4c327d8a503742c1be76"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.120.tar.gz"
      sha256 "8bad20b035633f8485bf5326e9e6458775b03760d14b15deef3dc0bf5d226cb2"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
