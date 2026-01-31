class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.95"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.95.tar.gz"
      sha256 "24bb729a8d8d9dfb06eed1fac72d80d023d30d34ae4b8aa734f34059e479f7d5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.95.tar.gz"
      sha256 "2dcad9b0b6e52614211e788d30eb9fdf4ce6f4256b80a8b497c16c69ac0afb09"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
