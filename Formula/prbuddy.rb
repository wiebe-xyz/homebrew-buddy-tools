class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.138"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.138.tar.gz"
      sha256 "a2c87b2e050dde7d10969431fd7d3a3b094476a05376c610974bed312349a0e8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.138.tar.gz"
      sha256 "cba64a5892ebc43f2ab9a65905e73a7be893c961173bc6c86fa56d0cca2bf2a5"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
