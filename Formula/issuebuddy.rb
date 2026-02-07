class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.127"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.127.tar.gz"
      sha256 "52ed9052118bb9b6c94e7bcdde6aa51b5037ba30d1958f25288645793a4ee042"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.127.tar.gz"
      sha256 "cba95882d3e0e8f9b0f2e23b92dfb0cfec19ad6c97aeb8f0851ac831e22d28b1"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
