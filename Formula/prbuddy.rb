class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.206"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.206.tar.gz"
      sha256 "412205456860c62842ccbcb16fbd4f56adc30e232bdc5daf39fbeb28e3fd4197"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.206.tar.gz"
      sha256 "f1299c0954f569aa9106cabe14b772b24df91a73c37e593cdafb5c14b47ccdb8"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
