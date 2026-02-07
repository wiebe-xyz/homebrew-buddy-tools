class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.128"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.128.tar.gz"
      sha256 "a54eaf2a1142c73e8d430864ba7e2b4c136220535cb2a5f9342c7cd1ccd32ca7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.128.tar.gz"
      sha256 "256fb8ccc5fb852a2805b0c86473587c17c1e3db50e76253e994a5cf047470eb"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
