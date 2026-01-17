class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.70"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.70.tar.gz"
      sha256 "fc4255f1c3a9f8df514b65f3bf89d1a27faf45eca7f8979ed08693fe3fa10aeb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.70.tar.gz"
      sha256 "c0f2fc4f002b348091cd927b0cd598a9ad7521c3362f6804ea3e535baab75302"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
