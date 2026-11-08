class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.211"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.211.tar.gz"
      sha256 "cfff56e178bad86faa72beafb2e40586bf1240891ce4bc9994a244d827dc5a09"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.211.tar.gz"
      sha256 "7cf16f174d90dbe5b5912e05d06a19b4f11d5149c2d3715e9b6c94992d3e8b27"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
