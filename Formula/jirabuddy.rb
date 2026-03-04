class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.146.tar.gz"
      sha256 "6287ef186e0e0fc3af495e701d4b7acc23b92c64afc8c6f183b1cf43336853a3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.146.tar.gz"
      sha256 "0b9a8d6f1672be26ba11632f0c49fa0274eda0079f9b99039e17d8c73b713036"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
