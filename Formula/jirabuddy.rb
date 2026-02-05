class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.110.tar.gz"
      sha256 "e884b92a4346326d4109133da9b66b5263b271a5fee6ed63cfe12477c8eb37c4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.110.tar.gz"
      sha256 "9676f8d8567fbfdbc33d84d8dc9bccd6f01f5ca8aab4dee5b3d246d7b21cace3"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
