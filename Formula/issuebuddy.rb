class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.225"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.225.tar.gz"
      sha256 "15da402cd1bd7c88728802da34cd724ff2cdb483929cb39db7166d02a9a3d2fb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.225.tar.gz"
      sha256 "b6a69444276a134be6610440f35a1fdcffe15fed4f15bd5f956d7a0b11b4adfb"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
