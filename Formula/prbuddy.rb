class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.89"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.89.tar.gz"
      sha256 "8d1e9e999a45c7a2136865f2ec88c55a194e8618327f4d1c44a0b3a53bd8f715"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.89.tar.gz"
      sha256 "24baa8cdb498c6486694631fb5c58338b4ea1cd350afa1a5f161a47ffcbff9cd"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
