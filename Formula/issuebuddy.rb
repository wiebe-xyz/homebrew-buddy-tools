class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.68.tar.gz"
      sha256 "5451fda212bad4c7ad2cbc44f9e142ac1a9b4c14d4f9f4a0197f116eca15be1e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.68.tar.gz"
      sha256 "9be1cc63a29b4e02ba194a886161a431a1be0a94c6a5eccc7dc74327a81406e5"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
