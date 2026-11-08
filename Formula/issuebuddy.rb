class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.215"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.215.tar.gz"
      sha256 "b9a743c2813edfdf9ff9ae3af0ea9ea73f035125e3d6f8bc1bbc48a2ce8d5435"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.215.tar.gz"
      sha256 "602a01d6f8a885fc94214548d2d56c6df8d02a1bbb896de04d35f14271179832"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
