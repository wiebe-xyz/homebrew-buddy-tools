class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.146.tar.gz"
      sha256 "3add4ae89af0c659e6e8f6c8572ed0c187bec897aa295aa58c775c1149340250"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.146.tar.gz"
      sha256 "b92b02bd96bc9e16ec7f5d636c4f256b288e8161b8d4378ec93494170a7e7866"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
