class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.193"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.193.tar.gz"
      sha256 "76064eafadebc4f6a699655f893a11182199871e8c8a0b079e4dba5ac0f605b6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.193.tar.gz"
      sha256 "d4c3f5daae6f03b839b3cebb2140475f74748acba466a8209b871a5e5fc772c1"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
