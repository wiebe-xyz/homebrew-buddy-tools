class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.177"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.177.tar.gz"
      sha256 "c1532eb127e42d2ce631f9a4278d840f077fca4b371c65598d66e1b30bc5c2a4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.177.tar.gz"
      sha256 "880ffb8467967b655f4b49a95f71f6bcb0c3bcded641b712eeb21c5e2c5fed08"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
