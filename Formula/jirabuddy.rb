class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.212"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.212.tar.gz"
      sha256 "e0d3a35bf8e520cb102904cb1868f974d188d1b622ba6ae933dc4b0f61795c6c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.212.tar.gz"
      sha256 "a5214aacd43d75cd9eff064724faaa132cc59559b71224b5f571a383230c8bcb"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
