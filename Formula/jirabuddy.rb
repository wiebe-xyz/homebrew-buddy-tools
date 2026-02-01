class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.98"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.98.tar.gz"
      sha256 "879d9038ff81083c1db689dbcbefc1277b5e0715ae50f5a59ba36d46b98f0164"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.98.tar.gz"
      sha256 "8c4b6f19ba9235fdd3147e22f34c4f92979729380ddfb57a0e97def1c45b89f6"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
