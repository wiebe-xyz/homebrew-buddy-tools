class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.101.tar.gz"
      sha256 "305bbb62a46bcad214c3bb0e1cafd4f15d03f9fd5ace6d7a2d80d6da9946a975"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.101.tar.gz"
      sha256 "5f3dd758baaabb664baa0909aa2fd65e583540adaee0c0f739692938e253e81c"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
