class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.223"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.223.tar.gz"
      sha256 "94336ea4fde09a4aae78e132fc4961bf7f9ad19ad2f1d5553602a610f9fc4c7d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.223.tar.gz"
      sha256 "3d6809e5322b9286c48486e1fbe839be90cebc97c5addd9d108811b698303a3a"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
