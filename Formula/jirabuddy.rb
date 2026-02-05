class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.111.tar.gz"
      sha256 "4c36495f1761040ab4d62cfaae2a11473cf30ba0ca23a38a2ae0856f54ace7b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.111.tar.gz"
      sha256 "d4b6d6c216ac76d85a82adb90be4382a91f93ec0785d44a51df398fd7d848b07"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
