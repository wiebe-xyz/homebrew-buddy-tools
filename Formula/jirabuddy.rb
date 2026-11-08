class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.213"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.213.tar.gz"
      sha256 "14f01d051fa570744b7e96366875c989d9d4ac1e9cfa4428de4996a1073b80f4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.213.tar.gz"
      sha256 "0b8ffe184b12010d726124ceefabb8602869ac4831c7cd2903f8ac03f5b3a13a"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
