class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.195"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.195.tar.gz"
      sha256 "2bfd29fd06bf3f9879dd116d7b7de24e04f87d764412b86122d7f3dc1bb8ac2f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.195.tar.gz"
      sha256 "131bbe8fd380bf61ca2c525211e9b129c1313d863dc9a233576c1cee5c261eaf"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
