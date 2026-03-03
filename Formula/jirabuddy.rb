class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.139"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.139.tar.gz"
      sha256 "30f43d676ca04ba961533c11c43895d9c11b7a3a132a05bf2fde5293e9be7f3b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.139.tar.gz"
      sha256 "6868ecc4fcb09c1ec36f87c90d9aeb7adeb171d93348d66b5dc7f0301b6eb02f"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
