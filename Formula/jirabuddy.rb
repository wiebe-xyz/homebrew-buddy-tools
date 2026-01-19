class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.80"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.80.tar.gz"
      sha256 "439d59ce21cf5cff50fc48f4343ffd8917fd38c9ad2d901b351e6464e82dc1c6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.80.tar.gz"
      sha256 "8cf745f44b451a8f55ff5726e22e90f8683d64c91181d3c32b81ef822fef9ec0"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
