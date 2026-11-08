class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.209"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.209.tar.gz"
      sha256 "c773b255afdc05915d38d6f602fab41636bd20d0c73d30f2f75bcc64944c310d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.209.tar.gz"
      sha256 "4e8059b07e15cba034c92a723ec6ac1f7ebb958cc0280c1c5bc0c05672e3e567"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
