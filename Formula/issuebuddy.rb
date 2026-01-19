class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.83"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.83.tar.gz"
      sha256 "bc841695338ce6df106ee00b4c4df81cd82439dbeef2c0a77d325eeb0a56c8a9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.83.tar.gz"
      sha256 "6b99a09548bb669096b63846e89f22842583dcc7e8c7416ed7ad0061d8b0a818"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
