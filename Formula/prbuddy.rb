class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.83"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.83.tar.gz"
      sha256 "3ec38b6db471cc41afbc079d14fd0f6ae0aade1d94bd5eb96ea442d76d89ca08"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.83.tar.gz"
      sha256 "04923fa79847498329d1d9ae04d6ec962908a1a9bbe23e51fe1b9731da05d930"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
