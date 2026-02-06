class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.123.tar.gz"
      sha256 "e2bfa161b61ac24ed502567a7e183a5b346ebc8df60e37afecc471ff987e3182"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.123.tar.gz"
      sha256 "a23daac909dc665fd21e2ed34154db6dc8aa8fa9261e4b8f90d266a3a7f7a7db"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
