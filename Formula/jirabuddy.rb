class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.219"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.219.tar.gz"
      sha256 "58b0adc1ba46e4625bd9c7196cea0f0755afaffeb0638492fc4a2cba4bb7647a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.219.tar.gz"
      sha256 "d9c45c81e6821f7877127f0d263f9a6c8503aa2437bbfbff91604da149b78fb6"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
