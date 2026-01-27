class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.92.tar.gz"
      sha256 "14427c998d49a0e8a24979e0559a0e7fcb1e8748aa8c98b7a7a21f7790928fe9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.92.tar.gz"
      sha256 "fe45352c5f75d88ddc423f90f4cca6a5f2b09a4b04c9663a2f91e76ca8f74853"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
