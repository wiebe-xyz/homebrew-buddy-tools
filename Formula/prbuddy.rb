class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.71"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.71.tar.gz"
      sha256 "28f8bc7d3416a54b23a095a345a50975934073daf13b71bbf778d20f9dc24098"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.71.tar.gz"
      sha256 "d02ce045dc7a7b2b08f1b48bcbad3e8a74655fe5fcb39e5637ccf3278784060a"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
