class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.121"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.121.tar.gz"
      sha256 "fc99f46d6e9206fdb1aa8947ff7356938f14b1a98200b0779c42fb1d238abe96"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.121.tar.gz"
      sha256 "5b51640dc4eb347dc31db92b434ea03a87c7bce666bc18baccc80850b80f2353"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
