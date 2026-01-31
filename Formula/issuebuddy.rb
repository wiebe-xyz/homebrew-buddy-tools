class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.96"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.96.tar.gz"
      sha256 "159e9083b8f6baf805fb93f8f9a29c61464d191961551ae32141dbeb06ae9c3f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.96.tar.gz"
      sha256 "b1ceabd10bdf55008cde6deba31e87cf621ea913964e76f58e6fd4fc21537dc5"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
