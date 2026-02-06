class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.122"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.122.tar.gz"
      sha256 "eaba05362fd5a06bbd98302f27aad36c4ff8a25a1473f49e69fe8e97207a372f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.122.tar.gz"
      sha256 "9d09287feea76263ae60bce2e9ab3310433f31e63f18ef4f49f93f4fcf320a07"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
