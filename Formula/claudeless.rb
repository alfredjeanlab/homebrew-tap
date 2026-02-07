class Claudeless < Formula
  desc "A Claude CLI simulator for integration testing"
  homepage "https://github.com/alfredjeanlab/claudeless"
  url "https://github.com/alfredjeanlab/claudeless/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "7e358fe4d9660c6e0c00e53d2f6644ec2c4f86f178117708efbc12ed9ab6611f"
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
