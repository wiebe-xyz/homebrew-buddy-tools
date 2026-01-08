class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.58.tar.gz"
      sha256 "450b76ea8c66feaeaf529af8efb041ed5f8ebbaa7e1b0849d1325e651346d234"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.58.tar.gz"
      sha256 "70389eb0ba51d92a5ebac37e351de73d24d9e00cc9f699830f6f830710243465"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
