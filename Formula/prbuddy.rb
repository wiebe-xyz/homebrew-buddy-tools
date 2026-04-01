class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.192"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.192.tar.gz"
      sha256 "bc92b67d8966e3aa0ebed4cb1869bf4bc0d25d8643aa13cd9392f284eaa33418"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.192.tar.gz"
      sha256 "802da3370ff1f6d37bec5d067143aea57b9fae30514f8fed7736d84f335ef5fd"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
