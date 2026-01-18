class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.75"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.75.tar.gz"
      sha256 "29327d941a75e350492a7b3006d668028cc848c820fd82abc317d91a4e573b00"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.75.tar.gz"
      sha256 "cfb2b2e4dcc2b807d237a5a57525122bfebeb708ace39a102dfbe6e4e4a539a1"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
