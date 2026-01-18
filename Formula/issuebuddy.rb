class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.77"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.77.tar.gz"
      sha256 "1a257a205ad068cca2ede95f3e6b7e02d003609f5643b10e58647911c75b2742"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.77.tar.gz"
      sha256 "f9a178b96842410a9260e72ad9e621c8d7cb583d7bc343fe126b1a6b82cd1935"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
