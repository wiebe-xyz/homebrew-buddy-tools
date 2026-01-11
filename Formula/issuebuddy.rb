class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.67.tar.gz"
      sha256 "04e38f6944c1c1e5c17f2781bcd5bc89c048f50b4ff72c6926aa9fea815e47ed"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.67.tar.gz"
      sha256 "dd6bf0a82e879a4009ff341b46ef7cb1ac877b1f38917f1facab908bc952fb19"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
