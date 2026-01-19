class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.79"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.79.tar.gz"
      sha256 "299b7ce5be5965cdb7658f602f01690592dcaf204d378646be7bb37bcc15cb73"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.79.tar.gz"
      sha256 "70877a90ed40a6893adf6b7dd55c4bdb47016a74a318d721c168b7a41a8123e5"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
