class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.205"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.205.tar.gz"
      sha256 "f7dae5bd34ba7faea33cd55a0d857d5c66aea9ea0b7354951ed58ff077976b61"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.205.tar.gz"
      sha256 "1616e83265714cc5bf4202780dbe5b01c6b861bdf7f28dfbcb8667501df6637d"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
