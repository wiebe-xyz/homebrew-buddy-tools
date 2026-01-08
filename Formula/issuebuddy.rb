class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64.tar.gz"
      sha256 "1257e9086bd59aef24b87dd5a81c8e03dec6b4e8e083d4ff145dbbea48bbb5a4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64.tar.gz"
      sha256 "3ce5e5feefa297adcc2c5950416d57213b033fdd9b61735577529c6829269dd8"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
