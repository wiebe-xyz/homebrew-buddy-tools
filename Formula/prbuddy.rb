class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.112"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.112.tar.gz"
      sha256 "a8efee6400514118a77f21a05b34c5f41d2a7e1d182737fd2a59477657d93f55"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.112.tar.gz"
      sha256 "2f6519935e4ee2348d79fe9c08e56813b77fb83c4bc24719ed52abe4afac1374"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
