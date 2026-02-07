class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.131"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.131.tar.gz"
      sha256 "be65fc402469f6a88e101e26a7bf8cbc5f36ec46a38e86b540df783fd210fce7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.131.tar.gz"
      sha256 "60a1d4792dd3729a4b89b85ae6e8f65c581a4a239a8e5aad4cbae045347835be"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
