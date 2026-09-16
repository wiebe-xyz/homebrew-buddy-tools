class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.203"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.203.tar.gz"
      sha256 "87fd5511e30cd31ac324c429f04bfb051646f33de5685fd6d172e6b670c8b8fb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.203.tar.gz"
      sha256 "93ad1dd7e41853a33e4df402c0e186e7dec27e66db72170964d7121b8a5be341"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
