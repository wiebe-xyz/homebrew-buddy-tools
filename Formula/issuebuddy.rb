class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.214"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.214.tar.gz"
      sha256 "d09067667d8fcbb88666555724a647fe5c86f2c9725d4e13c38a34e6b1ff5c8c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.214.tar.gz"
      sha256 "619adb7f4763641b3ac0abdf7d99ad2815e1132f3554331082c749ad6e13a338"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
