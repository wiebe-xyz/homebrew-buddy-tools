class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.107.tar.gz"
      sha256 "80da9953783d857e8793468a9f4bd4240385cf88c34564a8d03d6c61d12fe4d5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.107.tar.gz"
      sha256 "f376a1ae90e8441a8521ba722e29e622bfe960820ec8f03a6c15c43d226b5d2c"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
