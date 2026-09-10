class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.199"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.199.tar.gz"
      sha256 "6cd99401db7f220078cc8825bf2120892037d1d911121ff32a35476ae96ea1bd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.199.tar.gz"
      sha256 "3c97ce662f3b9d22a7eb1a4b74a45fd930f1afea0aa3fae595ffdf6398a76c96"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
