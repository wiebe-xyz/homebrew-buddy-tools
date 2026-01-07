class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64.tar.gz"
      sha256 "1c2d8041fdc120a50518594913eae395cb10998d76cdd3ba42dbb94b7195b92d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64.tar.gz"
      sha256 "b4ab32856685cc18edbda0172d9a083324ec9e34b2166132ed000f1f440f1e6d"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
