class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.79"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.79.tar.gz"
      sha256 "c76641dae313594cf966a572447ca6cd68a944233a949649259f171adfdf4db2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.79.tar.gz"
      sha256 "031c01373589273457caa2f8dc9e2c159ab66380b21873e74c7482eb6fa46337"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
