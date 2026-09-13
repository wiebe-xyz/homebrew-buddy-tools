class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.201"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.201.tar.gz"
      sha256 "b7a98a986ded43dccd83e780324879f0903e46835757b3c3257ec57d15fde7b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.201.tar.gz"
      sha256 "b8f706da87ed7a7ab5e16fc68e84ac22de09d21cab3b5948a357bad7f3e1b002"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
