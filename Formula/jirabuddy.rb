class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.97"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.97.tar.gz"
      sha256 "37a2d8f1449d48f62dae74590abda31f8759a3270a0eddacc8d793c61b8bfa2a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.97.tar.gz"
      sha256 "2aee51bc1f6687d8cf9d15c2ad7d666a931b80159a38d60c6e2d83082e0a6f22"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
