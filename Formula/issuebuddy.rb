class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.82"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.82.tar.gz"
      sha256 "81b65f61e3d6d382f6e196414e4f2fbfcf3e32fe0a4f274ee32d63e47c0dba15"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.82.tar.gz"
      sha256 "bb21f7a6a06aa91c8119be80e578fb34cd80dded29ef9924046f0a40a7ff6789"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
