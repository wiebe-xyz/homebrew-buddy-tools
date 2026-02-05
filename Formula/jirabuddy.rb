class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.108"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.108.tar.gz"
      sha256 "4a1934b3f9e51fe00b61bbb80e4eb50105d170763bf876e5c64fe9c7368d761e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.108.tar.gz"
      sha256 "9536969c87c5e4f02ed469c2802861e833a0908325a6642a40bffc5a1731a54a"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
