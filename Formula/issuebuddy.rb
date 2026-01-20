class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.89"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.89.tar.gz"
      sha256 "ec29b2993d6395b655df6695b520761d3b8319ed5a98731f2512dba50b904bf7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.89.tar.gz"
      sha256 "faa06aba1e89dcc24438feea5798e8bf37fba71e0e0e12903810bc9cc6d95a0e"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
