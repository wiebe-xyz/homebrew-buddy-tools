class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.194"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.194.tar.gz"
      sha256 "074e8baacbd0cadf662dea909cede22097260a6aba34d9e77c19a47e391cdd95"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.194.tar.gz"
      sha256 "a29461aa4d5b308181e7ef272e1966182c8284fbf2a0e5215c108b4f15e93eaf"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
