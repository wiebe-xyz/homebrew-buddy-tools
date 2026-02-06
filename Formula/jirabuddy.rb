class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.119"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.119.tar.gz"
      sha256 "046403be8df7f43cd2b4ae1d8fd728c99849151c64033beae9af6a23f0c3c470"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.119.tar.gz"
      sha256 "68619a6ca066f5025ce61c76f15c4c2c8bca35e3d0f8d9dc20fc3d80b4c758c2"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
