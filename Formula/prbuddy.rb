class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.220"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.220.tar.gz"
      sha256 "35a85eb65394036935a4b874e0df50bb4a1bffdb919eb2c1aa72c05c8370236b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.220.tar.gz"
      sha256 "3c16eb20f33a31a49722c4f52db6dc4d80adc66a9dc0fba36e21105b0d661b5b"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
