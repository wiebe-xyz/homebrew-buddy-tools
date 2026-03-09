class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.175"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.175.tar.gz"
      sha256 "3a126d838eb0244a7a08344b3766222ee6e73dafee1ca264f3e5e18f988dca9c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.175.tar.gz"
      sha256 "b8980d07ed29d516d398bae5d1be99b68613884fdaa3330678d940a96fbdf75f"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
