class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.79"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.79.tar.gz"
      sha256 "6434ae5182de1a65e911b0896f1ca09051e13046b2fdef40355741986b0c46b5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.79.tar.gz"
      sha256 "f1a98b3bd4668b3242733952f88e07e973c5be0651dabb9fc369a7ff358dffdb"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
