class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.204"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.204.tar.gz"
      sha256 "9764a1f15f44bc38e3835cc86c6e8b9a495413818369ca6bbdc3c486fc194700"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.204.tar.gz"
      sha256 "398deeb370ebcc474f7e2ded7c7f692a9e9d7442a01c95475fda1c89d85e78bb"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
