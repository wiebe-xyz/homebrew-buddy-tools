class Jirabuddy < Formula
  desc "CLI tool for managing Jira issues and sprints with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.218"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-amd64-0.0.218.tar.gz"
      sha256 "82426d433962e1919189e5b45c2e52ddb285122882173a46d7d67777a4d75434"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/jirabuddy-darwin-arm64-0.0.218.tar.gz"
      sha256 "850d9dd3d5ffbc227b36c91eda30e2fbf7acaad1fb8732e28df85839f5bcda6c"
    end
  end

  def install
    bin.install "jirabuddy"
  end

  test do
    system "#{bin}/jirabuddy", "--version"
  end
end
