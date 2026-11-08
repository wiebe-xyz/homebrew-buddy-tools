class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.220"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.220.tar.gz"
      sha256 "edd4eedff720f69c2d0f4afe6d0dd0523f6bd6c2d67cf8d34968b9f2864bfdbe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.220.tar.gz"
      sha256 "07e708dad32928d1a9d4ce8bfad688358f4b8f1da062931c2a6e80851d0f8c4c"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
