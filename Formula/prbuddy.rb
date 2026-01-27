class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.92.tar.gz"
      sha256 "ef6121d420a23a6a63f0da6fe2142bb8813e61516c9e2548b8ddb2cdacc9afb8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.92.tar.gz"
      sha256 "ecb560a0f970f77feb788d06d5880bd654a4850d4b7987c47a48737c94ba0670"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
