class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.81"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.81.tar.gz"
      sha256 "1f778d6af7416d7e54eb09658a641eb9077c809d8c53a07b9dd4dd71bafe45c8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.81.tar.gz"
      sha256 "22e786b29a8e6422795047e81fa2fb18746d9380998a9c1f805266a2ca2b2532"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
