class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.112"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.112.tar.gz"
      sha256 "3715dfe0f4bbe27cdf945fd2b8ea017fbf3ebe245518c0c1df8ed627af5a5929"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.112.tar.gz"
      sha256 "b6b3d4d6713d0e4ee524b839a15ab697227fe2311d701b19bbb28e926a5f5041"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
