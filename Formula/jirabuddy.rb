class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.195"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.195.tar.gz"
      sha256 "f7f271312c144a5be93158050a481ba6d90a1f68bccc10b1f8bd0a2504f48b78"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.195.tar.gz"
      sha256 "7dcdeab54938f8cebfbb7efa83ff3b1ca48109d2a58867415cd4f31d89c33614"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
