class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.100.tar.gz"
      sha256 "010a9d77fb07f182284b748d4f3466bd7863799520d975bcc99061b3dc783011"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.100.tar.gz"
      sha256 "4db7a0a849cd49b18fff4e6fbfb9361fe77d93a9dba35c49df89a0c5d11001c2"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
