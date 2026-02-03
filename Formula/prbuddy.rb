class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.105.tar.gz"
      sha256 "e053405671de3f8857fe886b93abcba5fb35a95e3babbb17c201c03a3c25fac8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.105.tar.gz"
      sha256 "e16f4d60caed0f4e22fe3f0fef8572d5b8b1460a44c6efe7bb3edc9b95a40414"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
