class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.64.tar.gz"
      sha256 "f965d2be34f06444ed94cb3d75493b78c924a60ae6497904f87966e7e2f213d1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.64.tar.gz"
      sha256 "8f3db152f3bd268bf0c4dcd11821c524a06e96783b6a3a51884b7f1ad26ad039"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
