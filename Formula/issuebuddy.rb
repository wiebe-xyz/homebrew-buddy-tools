class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.118"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.118.tar.gz"
      sha256 "0d32c7092e3ccf91fc266340a0cbfc14f47acafa4f2d887469e42240d3f1f424"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.118.tar.gz"
      sha256 "ec6d2f7714ae039203f2e8f25a6ea55742968635313c18b69beb6b91cbcb41ae"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
