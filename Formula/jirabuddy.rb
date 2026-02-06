class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.118"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.118.tar.gz"
      sha256 "977c36a6cc04c4ce9591d66011c41ebd54622688bbc64739061487e75d5c21a5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.118.tar.gz"
      sha256 "d5f098b65fc2fde60a43bd38a2012715a6c63f47f61ad53a26ccd75fb57c0ef8"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
