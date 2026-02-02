class Claudeless < Formula
  desc "A Claude CLI simulator for integration testing"
  homepage "https://github.com/alfredjeanlab/claudeless"
  url "https://github.com/alfredjeanlab/claudeless/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "8cd8d78764c6178b8ce7dc6dcbf654e4d63f1c58ddcd82a1cba2820353549b22"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--workspace"
    bin.install "target/release/claudeless"
  end

  test do
    system "#{bin}/claudeless", "--help"
  end
end
