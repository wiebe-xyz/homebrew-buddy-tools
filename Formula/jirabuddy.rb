class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.103.tar.gz"
      sha256 "9450d704fbe45d9f6b331c3c767eaa8c2693e72de58a6df11c510bd3303d3362"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.103.tar.gz"
      sha256 "3ef1e0d7bde915584107ec8aa366d81f3850ce9926cb7a49760da45810cb9859"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
