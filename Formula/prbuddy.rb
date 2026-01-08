class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.58.tar.gz"
      sha256 "82f6d9388d3a950ea086a972ef44f305bb85f0347ddda31b40b29dfea90ef51e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.58.tar.gz"
      sha256 "ac2a1a1c52956e237d4ee7a6bca14655f9b05ff444e4c9f8dbc31abfa200066b"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
