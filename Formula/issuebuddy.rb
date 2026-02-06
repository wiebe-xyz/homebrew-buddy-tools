class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.121"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.121.tar.gz"
      sha256 "66cc2ff76ee7c9fa72204f8247d2c4e136a7761f67aeeeef1f312ff9a9b248f5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.121.tar.gz"
      sha256 "f51b1a658d66f3f65e7665bd64b145ae3ea041c9f17ec001749d97f6ad3e4647"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
