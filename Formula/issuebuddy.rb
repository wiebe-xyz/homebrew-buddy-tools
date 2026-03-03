class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.142"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.142.tar.gz"
      sha256 "eabc25e878e0272c52fe2ac6efc5bbc40c8bb0e76a92e61d89080814140a8720"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.142.tar.gz"
      sha256 "4bac52af103dcc4cbde16d3d9b889fb3377dcc6235c808aa3d781f7e3463ce37"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
