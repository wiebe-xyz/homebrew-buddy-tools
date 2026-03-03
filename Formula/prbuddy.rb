class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.142"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.142.tar.gz"
      sha256 "57a6d2a8d4102a0ab1c6433d8af7634888fda6db33768c588e687b0d81edefad"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.142.tar.gz"
      sha256 "dd61c340b2c056729cc33ce57726f45352dbed80ee1400d6075ff3385ce79cfe"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
