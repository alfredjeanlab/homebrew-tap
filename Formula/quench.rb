class Quench < Formula
  desc "A fast linting tool for AI agents that measures quality signals"
  homepage "https://github.com/alfredjeanlab/quench"
  url "https://github.com/alfredjeanlab/quench/releases/download/v0.2.0/quench-0.2.0.tar.gz"
  sha256 "bf5dff91747ac557b0322912a60762ca1e30cbcfb809c6d78957aea545bb40cf"
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
