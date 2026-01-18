class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.73"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.73.tar.gz"
      sha256 "72dc208a8c7af274b6c9e4f7fd6186ab99814cdcc8e06b7211ecd3bdbf885145"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.73.tar.gz"
      sha256 "c0339572373c87b8d60bb12243200178c706240082ea71a929d9fa7ce8806993"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
