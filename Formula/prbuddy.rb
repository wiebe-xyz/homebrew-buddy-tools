class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.52"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64.tar.gz"
      sha256 "fad3175bcf160fddc60a60b3f9b29cd48b47db88d346b906de0c61ce22b8c282"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64.tar.gz"
      sha256 "0ffc1463fe604ddd619adce626bfa68cf78ed30c3650817959e7124075637df8"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
