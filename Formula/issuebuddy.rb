class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.226"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.226.tar.gz"
      sha256 "ad32ca80fba3822a46c53fd94c0f93793f44dd6c2477d4f9e3d1d51f1899998e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.226.tar.gz"
      sha256 "ce00b004b86aa379b1cb10d9b9a38c3f75d001e557daee8c9abd50275b87c85e"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
