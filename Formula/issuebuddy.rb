class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.198"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.198.tar.gz"
      sha256 "76e581d863b13d7e31ff78e9b5900a8fd484f2c3e569053b4812dd7114f9d545"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.198.tar.gz"
      sha256 "483d1454151ad4864ad84b33370a81f44dcc94f8e18bcff9138d3d7394a8aae4"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
