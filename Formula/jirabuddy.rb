class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.141"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.141.tar.gz"
      sha256 "87beb962908d92d51a8fdc555d9c29adc0718ae4a5b9f12f9d14418e308e01b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.141.tar.gz"
      sha256 "039ebe452dd0179f206f89cbb048beb9c5859efc8f9eb893f4cb41fda3318450"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
