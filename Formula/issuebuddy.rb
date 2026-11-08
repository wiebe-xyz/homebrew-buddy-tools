class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.218"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.218.tar.gz"
      sha256 "092e8212796f4e75c0bf24458a68a06c2ad1d2f1fef9afc5b7ee2a0c7bdabf3c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.218.tar.gz"
      sha256 "9fb1ea87b8ceda028f1b7c9e7975647c313644b082ac8a791ac3f744c7d38a74"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
