class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.85"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.85.tar.gz"
      sha256 "22809750c654b3dc397256a91e1fd369ae6816534a12242bf997a167de7c7705"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.85.tar.gz"
      sha256 "9779be8ab2c6dd7f5270edf50ab2e7ff61b5cdb0e534c775d830575db0eb2d7f"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
