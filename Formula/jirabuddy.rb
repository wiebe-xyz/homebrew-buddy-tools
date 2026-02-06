class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.117"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.117.tar.gz"
      sha256 "82b2a9e62f22c103357a07cbc85a0f59042228088ab846dabb76a356f518b27e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.117.tar.gz"
      sha256 "06b6d2cef22e4002c38ffeebce6f9fc8980d7b6603abc38c333482eb4dc8c304"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
