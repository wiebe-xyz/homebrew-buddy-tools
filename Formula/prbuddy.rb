class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.182"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.182.tar.gz"
      sha256 "6d8972f811e546cc410ed787c707c8459fce8f2630e0d0ff3a1a537c5a9f1acf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.182.tar.gz"
      sha256 "245e75181e883cfecb8a58b8dedb455cdd00953e42ac559602c73ed781567465"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
