class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.192"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.192.tar.gz"
      sha256 "221d3eee813e385d51aa013edbfb2ef4c545d72e5a9f58d4941cc40847cdafa8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.192.tar.gz"
      sha256 "8a030ce382f1d964348d7e4e412efb99f9bb9c6bf80a1005ea90cd343760b302"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
