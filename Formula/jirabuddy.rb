class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.221"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.221.tar.gz"
      sha256 "d1aa9438713ccab6c7baa6736fd1edd7980d6ccb690ea9a3123f4bfb304ccbce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.221.tar.gz"
      sha256 "a29379e1d4ec8f038276c8b7737f3e66b3d79e14bacb7d882f2348441a491112"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
