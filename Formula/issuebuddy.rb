class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.181"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.181.tar.gz"
      sha256 "bf45994726436db542b6b8cd93d00f4129f348ea6bf0c9ec0dd3d219db360b2f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.181.tar.gz"
      sha256 "e8e89d04b3392d6e144545fde4c160740c7ea4ba600d5401ab91a9cb8d12df48"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
