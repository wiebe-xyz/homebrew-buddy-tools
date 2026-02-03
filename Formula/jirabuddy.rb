class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.105.tar.gz"
      sha256 "4bdbf5e03c3b5e4662a654f834a0ab10178e8f9326b1b5936abbedd944893e00"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.105.tar.gz"
      sha256 "897f58a035bbba3f3bf9f0cf7d252b7b224b6e3d5f04a16e92493b0282d7a0f1"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
