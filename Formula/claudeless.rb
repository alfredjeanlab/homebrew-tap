class Claudeless < Formula
  desc "A Claude CLI simulator for integration testing"
  homepage "https://github.com/alfredjeanlab/claudeless"
  url "https://github.com/alfredjeanlab/claudeless/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "26a2411089a177b43ad59c6916f39175999685b3c1dec789d32bc844ff0262e6"
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
