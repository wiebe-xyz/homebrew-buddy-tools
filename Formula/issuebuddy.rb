class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.209"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.209.tar.gz"
      sha256 "0c0497254b54a4c10157b3f76030d0d075ec27c2390e390de1ee0eb83e8c0684"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.209.tar.gz"
      sha256 "60c3f868c1037d98952ef6fcb3fe5745727dec8e3548c81781aa5b866ec28af0"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
