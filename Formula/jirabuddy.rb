class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.216"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.216.tar.gz"
      sha256 "39fdfa63434d3a9023d7e7ad46c5049bf1b64ca2c87d9a19331b53cdfc0bce72"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.216.tar.gz"
      sha256 "17e35d1989e94fde822fd34790002a8e52da449fa5d1fa7d50772b420861be94"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
