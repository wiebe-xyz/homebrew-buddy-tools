class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.141"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.141.tar.gz"
      sha256 "c41fd486dafad4797d288464f2a626da98cd1b9cad0264d689b8e0feba3f45c0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.141.tar.gz"
      sha256 "c02075f0282b5e334ad9b4cbe3cd97be57ea90396d7579692e85500a13b01d6b"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
