class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.206"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.206.tar.gz"
      sha256 "8f1190522bca6f6eae14c7f39ed893a1b1e4703e4b3681d26a151529f95e6e29"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.206.tar.gz"
      sha256 "b5965c71e82254ce90abefe903f1aabe9294e10bd1f0e122d7a7316a4accec0d"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
