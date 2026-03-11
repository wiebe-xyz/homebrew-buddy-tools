class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.177"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.177.tar.gz"
      sha256 "b8d3ddf76c6ba0d043415fd93f7734d166d3e3b6e0bc89f462b28d33e4addeac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.177.tar.gz"
      sha256 "ef18a3546523e7e37ecad04971d0761697e94554c3bc95cdc966664cf74e437f"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
