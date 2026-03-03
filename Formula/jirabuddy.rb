class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.143"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.143.tar.gz"
      sha256 "0ae48a43a604fff371ac04569ca652b9897da6d7f3551d40bbb3d9131b8f63ed"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.143.tar.gz"
      sha256 "71e4dc3d1b59740d35b4ebde1826275d499b7adcdbe476c2220ca8f6e1c8d32d"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
