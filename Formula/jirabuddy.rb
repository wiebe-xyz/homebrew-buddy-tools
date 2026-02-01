class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.101.tar.gz"
      sha256 "26e81945aa6590d90b173e9b836bcfdd5aa07f711edddbe8c272b3064bc146ed"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.101.tar.gz"
      sha256 "d52003cb9888a2cef1b908a97601f21b9c77bef8f7643ef0cd45b30684a32f3f"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
