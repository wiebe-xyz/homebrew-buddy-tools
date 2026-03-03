class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.138"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.138.tar.gz"
      sha256 "1a97651421eddaef343f84499db4749929e83a4f87725c54ad28ea6d1683399b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.138.tar.gz"
      sha256 "d07bc1016cab5efccf17541d9ec645d3e2d3c2ba2536bdc9d53ebc5ce758917f"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
