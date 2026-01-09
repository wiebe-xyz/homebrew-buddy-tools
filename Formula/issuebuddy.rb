class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.61"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.61.tar.gz"
      sha256 "9b1371f3aa823e42a4a0a669d4e5b4d872eb93b80b2244e43a1ee8c91cbb3c11"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.61.tar.gz"
      sha256 "0bc262f56dc35af92055cc8f48f8aaaad92fca6b572408cb6d0f8b6c0f60b8a3"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
