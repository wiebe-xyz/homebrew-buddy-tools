class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.214"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.214.tar.gz"
      sha256 "300b9b25d2495d9945e90ec7c1261ec101f101981934edabbba4866ab665f05d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.214.tar.gz"
      sha256 "e384a8ed14a4be2078be0196fc0b1a43bcae9ec5bbe33f92a81a3010cc1407fe"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
