class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.72.tar.gz"
      sha256 "0e26fe3acaa081b28a451579f9c152d927bd95f3c35dc9b99a51d1ef6803fa8b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.72.tar.gz"
      sha256 "fd421cd8b70a80b472149f3d9d00b1db642225f5656bc749d880b8c0730612f9"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
