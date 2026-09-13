class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.201"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.201.tar.gz"
      sha256 "1c35251b118936a766383099b0b13c782100fd5e7ddbc81fb71fe6a35cf1118a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.201.tar.gz"
      sha256 "85aac8cfc20b875b7541f7d0f87a1c34eea2a6d08344060d36255dfc069033c0"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
