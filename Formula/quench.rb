class Quench < Formula
  desc "A fast linting tool for AI agents that measures quality signals"
  homepage "https://github.com/alfredjeanlab/quench"
  url "https://github.com/alfredjeanlab/quench/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "1f99d37f2558ea9339a5be47b832f4e542a3756c52fd6ef8329bc1b365fce7a4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--workspace"
    bin.install "target/release/quench"
  end

  test do
    system "#{bin}/quench", "--help"
  end
end
