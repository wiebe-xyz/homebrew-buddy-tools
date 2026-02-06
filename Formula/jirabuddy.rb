class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.114"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.114.tar.gz"
      sha256 "5b99a0120c40372a4a3dd2f27867a1132660031f1c4a6890a704e403b6710135"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.114.tar.gz"
      sha256 "95151527485b7dfbb0e30bb3a80ff6f4b9b9b37a7af5a31d2946064e46f88201"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
