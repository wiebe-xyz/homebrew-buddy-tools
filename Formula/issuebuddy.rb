class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.212"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.212.tar.gz"
      sha256 "e4109696596ba838fe29e9e8cd36aa34d07f94dffea7f29195b07c188ea347af"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.212.tar.gz"
      sha256 "fcbba2a1063d4a71763c132ffbe4c2c5ade7bc01ee8b301a7e3f1e1deeb19734"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
