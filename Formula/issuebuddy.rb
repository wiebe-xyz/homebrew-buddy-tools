class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.224"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.224.tar.gz"
      sha256 "1ef3f4bf3f8e814b5dd011ef7d98f0574d9846af602431e34eaebd0082362a09"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.224.tar.gz"
      sha256 "1953fc3c3e2241e77f2a8ab57dfda849034ff66133140cfa037b2b60d15b037c"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
