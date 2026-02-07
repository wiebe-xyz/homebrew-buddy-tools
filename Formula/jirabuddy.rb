class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.131"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.131.tar.gz"
      sha256 "adbb29966c32db9280d7d5c9fdaa8f3a8f6f7caaeed5ead3fbffcab8be4ca654"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.131.tar.gz"
      sha256 "3cdf7b2ac6d359debe24a46926cca109aaa40b7aa8a00a56a216c917cbd30de2"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
