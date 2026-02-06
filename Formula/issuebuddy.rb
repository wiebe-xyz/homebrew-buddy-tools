class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.124"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.124.tar.gz"
      sha256 "27777701faba92dd1e00c38746190945b93b9af912138cfd4794049eaeb86afa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.124.tar.gz"
      sha256 "c9e4ae287e8f4c96a5030e95da0208e951bc24f27f8a64e3aa9dd94cc22a47e1"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
