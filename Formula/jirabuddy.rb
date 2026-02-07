class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.132"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.132.tar.gz"
      sha256 "b1274eea9cd5d9a8f41cc8800f7e4375686cdabc4f423c3d673885cea9f99e58"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.132.tar.gz"
      sha256 "c0bb25c875f616f13b5164af6f0535e47f76b5d8d3a66b6ec7babf224cf61499"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
