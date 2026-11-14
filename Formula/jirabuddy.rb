class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.226"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.226.tar.gz"
      sha256 "6d7c391911e6c7bf8e3a296ede9f380d85e50b0b83da43fa2b185cf9b04458f6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.226.tar.gz"
      sha256 "d551a87ada4008f293fc54c282bcb220dd490f2bd4ace3b3523f961718d6ec2a"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
