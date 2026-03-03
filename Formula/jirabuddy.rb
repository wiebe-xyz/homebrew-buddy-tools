class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.140"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.140.tar.gz"
      sha256 "77d56b65eb30a24696b2d8747e7ba96d1ea26f3bd4935c6cdae76de9293e98f9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.140.tar.gz"
      sha256 "6fd95018a26c7453c14a6c56c41b8ce07138b4e2e074cb4e61e867bf82710e98"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
