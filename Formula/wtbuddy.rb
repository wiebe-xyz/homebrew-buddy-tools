class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.179"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.179.tar.gz"
      sha256 "9d7041abc41cceac2ae38302d38a0e747ed6427910143fea27afa32987ea4ac3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.179.tar.gz"
      sha256 "043085b0ba407e55447770c0bee935dbf9714b798f233f53af8b8c8e6eca44f9"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
