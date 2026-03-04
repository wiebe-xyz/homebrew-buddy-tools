class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.146.tar.gz"
      sha256 "2c9aa714bbf8185fa4f2e44fe6e9c7987d9fab2ff4cd868daa5a871f7761240e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.146.tar.gz"
      sha256 "bb942af87b8fff89ee79f882d0208c8e92976bc2cd86d87db77b17b069ad1253"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
