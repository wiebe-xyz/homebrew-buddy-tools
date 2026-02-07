class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.132"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.132.tar.gz"
      sha256 "b22775e079bdf28af60ca8dd8a8399e490c84dbd3ec139acf05ddde19a16dff2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.132.tar.gz"
      sha256 "7bff809ec726bb61c262cea768a8debdaf383a3dc3751e9b1c0ce7100b39af66"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
