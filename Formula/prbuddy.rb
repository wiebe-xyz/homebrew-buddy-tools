class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.179"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.179.tar.gz"
      sha256 "79457e0816564ed39cf8a7a4a59842fc7d63b3e4752f337fe5b06fa55f38af0b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.179.tar.gz"
      sha256 "70f6e76948a43b889c30ee6281cc2a97a7d1d7210c25f3290af7ca6f64d06671"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
