class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.109"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.109.tar.gz"
      sha256 "4316c917aaad3881b6456bd757cd9e263a8a4bb7e7800993ecc7ca89e1c29d09"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.109.tar.gz"
      sha256 "f74db3990521334f03b8591ee14d067d1305a9590dda2e9c3eb7e8fccf368de0"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
