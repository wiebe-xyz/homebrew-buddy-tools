class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.210"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.210.tar.gz"
      sha256 "c437cd923a37e186006cab668b14ab2c097cc7a0e2452a80f622acd9127f6135"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.210.tar.gz"
      sha256 "de63c03f27ca4cf6f51664dd60a3dfbeebb6dc22a6070d5271b6996cc6516cc5"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
