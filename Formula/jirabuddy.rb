class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.96"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.96.tar.gz"
      sha256 "722338ebe901a84f1f42db0c31a4cf23db9fa2ff231d29a31a9cf74ddc082732"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.96.tar.gz"
      sha256 "e13f368a7ae1e1f8fdc6c3d055dffea4e14d0a4be8b9d7aa1f96bedbc403724d"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
