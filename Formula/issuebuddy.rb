class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.109"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.109.tar.gz"
      sha256 "6861aac3cd2863145b2856f06956fefbb483e851b0a3f9645461f1e63fbf8b8e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.109.tar.gz"
      sha256 "c192f04e61b04ec05ec50a43bb943fc7a64db6f477a4014e5a819cfbb1be5b83"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
