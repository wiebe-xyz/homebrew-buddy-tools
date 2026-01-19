class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.84"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.84.tar.gz"
      sha256 "2c7bb4b5fd5e2ad4729e3b26b3deff8f61b39f98017ae7dde9d88ab62b49f4e9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.84.tar.gz"
      sha256 "29c3639ee09d4570f194d316cba6ee284feccae2b06d011100e012d2aa83352a"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
