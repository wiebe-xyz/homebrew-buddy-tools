class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.4.tar.gz"
      sha256 "4193a377d33ddeb2f391aa8a41b08fff16020a4c19e8628fdad6537c27653d79"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.4.tar.gz"
      sha256 "297644a82725f6e7577a9cfaf51819824626fffd5bda5236ba00447e72edbf02"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
