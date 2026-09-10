class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.200"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.200.tar.gz"
      sha256 "30937c11afacabc74942324bdc4f29e4d2ce4382eb69451ee0db8168c5dae10e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.200.tar.gz"
      sha256 "04dcadadb70175ba5561f52dbdaa0ed69606fc4a5402392c9498da9c97c84a92"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
