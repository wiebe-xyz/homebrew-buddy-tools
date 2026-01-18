class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.71"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.71.tar.gz"
      sha256 "7828d68d1d15c061c16a81435a8fb475c0eae26ddb1f2b5913c85a5ee5ae4a9e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.71.tar.gz"
      sha256 "f146b380dc6ee3b9172e0ad53eb00b82a5636a7bc2cccf57c4b1fde185c79e2d"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
