class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.113"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.113.tar.gz"
      sha256 "3203f90c44f216969d6ad3d1785c89a3b864c840e5200e25d71f52128f10d763"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.113.tar.gz"
      sha256 "21220f3e1cd98dcd2d3b9359aa2e02e9af5e8b03eb413ad17be776cbfc8d411f"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
