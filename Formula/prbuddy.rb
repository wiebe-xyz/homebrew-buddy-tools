class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.180"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.180.tar.gz"
      sha256 "182ba800cc5244852e4764df4a82a92b681625997bad4e0c86d1d12c70d7c065"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.180.tar.gz"
      sha256 "614ceaa04c6fa71cc0d9ff2a5156dd3d32b065a84c881c5b32de46d987d96370"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
