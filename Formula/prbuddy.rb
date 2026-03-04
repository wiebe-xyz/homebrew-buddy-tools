class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.144"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.144.tar.gz"
      sha256 "10f1077a9efad2de34cd4c87c50a7fda8996d3484582b499a637cd1cb54bdd18"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.144.tar.gz"
      sha256 "2f9c4ccdc39e63ce068d689f4d3fd3027680d4a4c9462c0cdce5f14185c53ce1"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
