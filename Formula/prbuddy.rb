class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.106.tar.gz"
      sha256 "16e7bb6eec2a634eb616c2aa41c0d0009b0729ee910979963cde8cadd16d2f61"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.106.tar.gz"
      sha256 "b2e9ea863aa9adb41a8b00f8c19261013b467791b4db790ce884b354836cf813"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
