class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.135"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.135.tar.gz"
      sha256 "3ea65e40f2a112a1d080e26b280d90dcdcc279ec7b5473afd9b4493ad94d3d26"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.135.tar.gz"
      sha256 "ae9a73aabb8767a76d84260c5535b5ae7aa88664059456e282a28e821b2b2562"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
