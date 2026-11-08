class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.220"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.220.tar.gz"
      sha256 "c9042ab840d145d958c894b4757af1f7264937b50aa75c10c2e7f6457d24ed2d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.220.tar.gz"
      sha256 "cbd41729c07b8b43fa68430cba7293d25d26e6aa18426b819d0ee25105dad8d1"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
