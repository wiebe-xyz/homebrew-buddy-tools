class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.125"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.125.tar.gz"
      sha256 "b9e8a10f7db50aa07a2768e8d293b63c6cf76379ce3bf1996bcbcf668e78b0f6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.125.tar.gz"
      sha256 "dcc60066b4ff5a9eaa78430c102df5308f22b5f89380cf15b88c8b8ed9376562"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
