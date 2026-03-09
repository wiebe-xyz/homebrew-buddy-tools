class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.176"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.176.tar.gz"
      sha256 "5935f32dc4e1d9493f05a2c1d9b59cca0e45ae4ec47d6614221159e33bbf5145"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.176.tar.gz"
      sha256 "d0cdc6ec3a56e83ca459de51d9d7f254d4dd540c8417cf9a753f64a4b6128122"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
