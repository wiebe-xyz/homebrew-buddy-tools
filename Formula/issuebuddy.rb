class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.129"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.129.tar.gz"
      sha256 "600b123378e8cfc4806519c7cc8f811366229c86a2ea3b8e26069fd025efda9c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.129.tar.gz"
      sha256 "b6a865ecbc22e9d983c6219e518fab1b3a0c934d2c708b0a6eeb940e365ff956"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
