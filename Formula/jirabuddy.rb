class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.99"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.99.tar.gz"
      sha256 "8b7cf78b3a104480d1d2d56279ca291b1adb8522fcd15281d3f00e06a6a64a2c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.99.tar.gz"
      sha256 "763ba0813794955d9803baa4e91ecb914bd7f3a9338bd640329b0ddeede6f1a8"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
