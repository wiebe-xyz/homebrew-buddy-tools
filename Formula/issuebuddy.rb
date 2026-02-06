class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.114"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.114.tar.gz"
      sha256 "7ebdeefa5be5172a5468d0b74bd289d3b40b7dbc0a5d6cf9b8cef152900f11e5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.114.tar.gz"
      sha256 "5d9146db4cff6c3c583255d2b79bb408390988293d448c42534d4ba67f200b0b"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
