class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.218"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.218.tar.gz"
      sha256 "5c4368065bb9102a70740a8824ba8e153864fd34c63d8eb4215bb6a375a61d8a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.218.tar.gz"
      sha256 "a1cd3efbd96b1ead576b1b32c64a3c5ed10c2c38845859135a74f3b9be5d0489"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
