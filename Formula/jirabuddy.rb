class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.215"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.215.tar.gz"
      sha256 "b0bc1721f78819d7b9809878a1556b9f94fe5c70eae5dc3ca01e4f33fe56e945"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.215.tar.gz"
      sha256 "a6482ee754a9cb9c551b3b7998c2136062a5b9e8c39d0d516a6779df6685cf5b"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
