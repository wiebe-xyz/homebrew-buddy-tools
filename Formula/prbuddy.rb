class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.65.tar.gz"
      sha256 "73077fa5d04b372805fc1d76847b07d51ee5d75cbc6badfd7a616fdbf94988cf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.65.tar.gz"
      sha256 "9ea0ce8365faaea5b140d631aff77fadb59e8d4813be38df09de080a88c8bd20"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
