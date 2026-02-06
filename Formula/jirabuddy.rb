class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.124"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.124.tar.gz"
      sha256 "a5872b0690510350dbbd2ab2d3aca8e074b6b2b80b33d01e9f292ca2ac646191"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.124.tar.gz"
      sha256 "6f5b6aaa58ebcbaf4f390cfd4e743444c90bb23a4dd80b9f3c0670d000a3d233"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
