class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.78"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.78.tar.gz"
      sha256 "f77107863bbc86bd1f6c057b9e187c82ceb8a9c1b55c5d9cc1d4cfd4f3acb852"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.78.tar.gz"
      sha256 "dffd85c6addeae3d4aef08de7cea6aca5d75fd2644277af197c1c1371370ad68"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
