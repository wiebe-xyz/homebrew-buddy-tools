class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.196"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.196.tar.gz"
      sha256 "58773b79c268bde48cc2ad721ae1adcd6b30048096a48af1b1c97fa2abd9f737"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.196.tar.gz"
      sha256 "0a4d2c1342a5e0b5803ab85308e0631f31d3247c413602accf723ed8c5f2756f"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
