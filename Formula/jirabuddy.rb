class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.222"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.222.tar.gz"
      sha256 "b095657ae5f0a1c196f7c8db1537bde1f01d1f241c27491e3d9093343ab7a125"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.222.tar.gz"
      sha256 "5b6914d1c0fd0ce7bd4dc4882bab8120128fc04e1727dfbae9da446c93a12c7c"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
