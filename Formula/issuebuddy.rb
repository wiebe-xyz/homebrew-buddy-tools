class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.125"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.125.tar.gz"
      sha256 "d445032fda8ccf2aacc8ed9ba0ca071f83d895e99e1b9e78b8bf3f49f07e5739"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.125.tar.gz"
      sha256 "2c5c19b823ef6e94cb07719b215ea45ebddc97626a5f9206d3dac3c7fadf2f86"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
