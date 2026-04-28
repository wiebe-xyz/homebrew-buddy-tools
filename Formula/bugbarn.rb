class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.5.tar.gz"
      sha256 "0de08b17172ad17c3a8289fca668e0e6c0f735f7ff36d2f790832ad863315e13"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.5.tar.gz"
      sha256 "f276ab43e3f82ab3b9cf963c4164faaa5a5ff0336ea27c1acf4d2f922f33601c"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
