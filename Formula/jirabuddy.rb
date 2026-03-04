class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.147"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.147.tar.gz"
      sha256 "e899ee9c210e0161099436d023cb0b1d3164c0d1484826f61a72627ef3728ae3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.147.tar.gz"
      sha256 "cb6bb9cb80fccafcd6d54ecc5ecd175a8fe4584f71f7ee155ec4109b995dca9e"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
