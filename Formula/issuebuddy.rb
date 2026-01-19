class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.80"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.80.tar.gz"
      sha256 "e2a817cad98394c2e1dfb6ed58e8c43590c68ee5053d3e2bd85f3e619d461ca8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.80.tar.gz"
      sha256 "b5134df35bd2ca72428727bdf1777b72a3059cf77b952710359fc10a40168f22"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
