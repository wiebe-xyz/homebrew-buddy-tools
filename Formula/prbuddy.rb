class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.121"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.121.tar.gz"
      sha256 "cfad0165a3fe798bbaeec0e9c2c5b8dfd4483e614a845341dce9cd208dda2efa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.121.tar.gz"
      sha256 "c0a65cbcf56b68dfb5f6f1fbadc0834e0fa9d43f45f77f0d4bbf0eb318135428"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
