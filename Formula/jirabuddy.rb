class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.197"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.197.tar.gz"
      sha256 "d32567dedd718ed10f92f196dabe26ecc8fb0cdc2be79da6a3bb457f663457ce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.197.tar.gz"
      sha256 "c5fa0537c4b04ecf58f6bb893a9766a08d6769431a4c0104c49b6c28ccc5638e"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
