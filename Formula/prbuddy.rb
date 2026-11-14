class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.224"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.224.tar.gz"
      sha256 "40f5cfe5648646208f2891f71bc57f5a28f88a7da7f83477ae2ebaadc11901ac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.224.tar.gz"
      sha256 "46d1c8a5f925d719eff164a6ff392fd0d84b41329b2dd21ca17955466df056d6"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
