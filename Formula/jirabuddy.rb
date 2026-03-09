class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.175"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.175.tar.gz"
      sha256 "1aaead7fe803ca3ba99119e70bd3556a38d7178b6297eaf1f80cc4fd202fc51b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.175.tar.gz"
      sha256 "9ba4f9926fd5fcf2627d6779c56409ebd6366bd416936bf42df5f080d31631c1"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
