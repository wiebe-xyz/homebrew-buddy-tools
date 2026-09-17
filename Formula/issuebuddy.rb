class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.204"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.204.tar.gz"
      sha256 "041b508cbfd5b244b1c57d70b5a92af4cac05dafc4a6affb3ea565de8e9d82b2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.204.tar.gz"
      sha256 "d74a8aeff77a4042c7fd5055e7a5c38024a8ac38bd958d0738b7b5f9f73fa514"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
