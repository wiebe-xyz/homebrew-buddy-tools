class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.109"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.109.tar.gz"
      sha256 "0923630c0d5f55e5e676487d094464a1762cb6cb91e1cf90afa6d9d44a1374ed"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.109.tar.gz"
      sha256 "09ef8a1c45e9bbf7f9c026958d173df5a8d4c4000ebc654092806fcabe5fb466"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
