class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.182"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.182.tar.gz"
      sha256 "0287f77086e9c82c0a19662d77092fad5134b5200d4650e016a5fe990e0c6f19"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.182.tar.gz"
      sha256 "e5807a2d5f40d6f2289f1dc59e70fec1496f41fde0c402aca4ceb05972cf35dc"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
