class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.90.tar.gz"
      sha256 "d87e54b6c5e8cb4d581e8a22c15706d3b1689bcea02e73b44cc20d6871f694e5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.90.tar.gz"
      sha256 "bd8341019154c21c6ace549e11c23203b0ee6a1def1a838205127f90f4f9b76d"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
