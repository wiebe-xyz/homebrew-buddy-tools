class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.62"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.62.tar.gz"
      sha256 "524411d01115b96d38cb19450a6962ac7c9021e7d489b85d78d246ea2584db3c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.62.tar.gz"
      sha256 "0fab7b08b032ac6b17b2d48183f2b843dddc1607ef194a48c63bc4aedb6eb7e8"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
