class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.132"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.132.tar.gz"
      sha256 "2e3ab03e1e7bcf6ceb403008472962e3ff7d85aa382c3f9634bc20e89980e5dc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.132.tar.gz"
      sha256 "8b2ba8c0ffcd44b234af291bcbf859998a5c75dd04abbb58859c975095ae0e60"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
