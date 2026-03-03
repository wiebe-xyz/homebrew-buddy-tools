class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.139"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.139.tar.gz"
      sha256 "4cfd6d5842dcf940e3e662b54ac299ef88a3ab3907e178df8eeb4633839881a9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.139.tar.gz"
      sha256 "23bc9f26e49338dc31a2595708cbff217d44d55920e90947457d96ca8c5bb251"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
