class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.104.tar.gz"
      sha256 "880e9765ee1c5594f19c4a41f96a1574add8fbde2a23dec644b6ede65953356b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.104.tar.gz"
      sha256 "43b46870fc999e4d0d7bee9b9bd48aaac0e41dc49d91e5ebfe29482eb5fb150a"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
