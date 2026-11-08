class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.223"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.223.tar.gz"
      sha256 "c39aed463bfd61c54b203b58c80d968bf2fae5a267cb6ba4c91eb92268c7795c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.223.tar.gz"
      sha256 "418a8cd46bae47e3b5ff8c0ecf934049b61208c197185fee9b4d6a853b47dc43"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
