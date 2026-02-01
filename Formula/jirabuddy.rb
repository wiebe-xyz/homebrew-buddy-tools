class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.100.tar.gz"
      sha256 "29331d46508ee18280bf6ba434f4079ee6f872cf0ac3fa002b64d51faf1a1621"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.100.tar.gz"
      sha256 "c86948081c8fb0d16e2ba38753c6b9b473f5f0add62cba0c6786148fa71928c4"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
