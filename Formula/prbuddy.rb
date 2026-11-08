class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.212"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.212.tar.gz"
      sha256 "b1db439d7b5f127dc622e735bbfa5bbd3aecaeebc4ae60eb7a77277ec78ac29f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.212.tar.gz"
      sha256 "eb8549fe52373793968e169eacb0a6a08fe9e761fbdabbe17d960c758b6f8530"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
