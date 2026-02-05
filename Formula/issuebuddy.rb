class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.108"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.108.tar.gz"
      sha256 "e4d1f319129fe44b6e5a463f3e2597d1783f7b669913c0bbd27634c11386ffdc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.108.tar.gz"
      sha256 "7943aa1fa5742e9fc9fcf1221207c2bbc3887612afb1c79226c0f4c7d1e61fb1"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
