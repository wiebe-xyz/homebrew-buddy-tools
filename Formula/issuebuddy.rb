class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.90.tar.gz"
      sha256 "814cac75527478af7de968d3c32fe8c57325fc1df209be0ce315dfeb8580f6f1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.90.tar.gz"
      sha256 "cf033950bd8f7091cc9dd69ec0f429d76693c23bcf1addcf56c4f26a16507212"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
