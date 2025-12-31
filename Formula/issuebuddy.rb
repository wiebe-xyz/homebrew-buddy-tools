class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64.tar.gz"
      sha256 "98ab1362cb16405e701ecbf5960822bb16a85d09dc2dc3fd94ab80a13e1d904b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64.tar.gz"
      sha256 "0297a47871cbb1116ad9d731a05961869b3daf5843818c8c7b748ebcd71efc5f"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
