class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.123.tar.gz"
      sha256 "cef458f74cbe78561b529861f18408837fcba845022bf63e3d204e6475bbf8cd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.123.tar.gz"
      sha256 "a3b17c9dad9fc8f172ebd27a34d6411e7a84340aca5c4d1047b4fa76ae65fdc5"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
