class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.116"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.116.tar.gz"
      sha256 "9cbc6e95fc8bbe973e75b89fc9d4abaccf2495ee7e93514894e8b83fac4bbb5c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.116.tar.gz"
      sha256 "7e3404dea2da92919378e649003469928ce81b9df883ec17f5cb6751a031bc6a"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
