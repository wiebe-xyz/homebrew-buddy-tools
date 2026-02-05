class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.112"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.112.tar.gz"
      sha256 "1f34832f026ba34474cdfac8394abc9d89a834cac0c50513298ea3e6afd2aa14"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.112.tar.gz"
      sha256 "cde58d6faa07c26fbb863b51ba21603f8433d4de1dbffe57e2fc088d72eada75"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
