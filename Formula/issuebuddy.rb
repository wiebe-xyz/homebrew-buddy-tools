class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.137"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.137.tar.gz"
      sha256 "055c78e578559545e037fe15bc161b1061416c7a34a2ed08296fa23f8e66abae"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.137.tar.gz"
      sha256 "fc053f24735d10bfc335d2a8ddfd3b0a2b8ffaa87258b3b56b742d9c6aae65af"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
