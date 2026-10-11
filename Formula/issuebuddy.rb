class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.206"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.206.tar.gz"
      sha256 "13c0d8dd70d3932a43e00429bdbc937f8e9fed579c61850cc28c6056eb439ffa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.206.tar.gz"
      sha256 "4edd1570dca871372b3ff30aa2f3502c8665b1e1ec029e474b79ecee4e1e33fe"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
