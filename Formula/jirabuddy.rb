class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.181"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.181.tar.gz"
      sha256 "e8bbaede25df016a3741575071e0c55f123d117203cf2f4fdded548621714764"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.181.tar.gz"
      sha256 "1e2a04992a5d4db1680ecbb9c848dabb85dc56e781bc3f0f14b2f6af6aa09ce0"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
