class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.213"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.213.tar.gz"
      sha256 "6588409d06cb3d40ace47bb6f4e6afd39256e40e4b2b0d3ddf416243b8cd8b91"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.213.tar.gz"
      sha256 "1922d1c7a9d08555c4c8b35fa164d57702cdf97fea5c719ca6c658667e4949eb"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
