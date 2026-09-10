class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.200"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.200.tar.gz"
      sha256 "4827e4ecf8ac991f734b41041bc8cce39dd547bfc3d4bbdc56999fee564efcf9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.200.tar.gz"
      sha256 "fe2731d3a64309cbe20f158da40d5ee3b65508ea6501add9950e05d786e4cf9d"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
