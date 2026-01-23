class Quench < Formula
  desc "A fast linting tool for AI agents that measures quality signals"
  homepage "https://github.com/alfredjeanlab/quench"
  url "https://github.com/alfredjeanlab/quench/releases/download/v0.1.0/quench-0.1.0.tar.gz"
  sha256 "6fb0c469daa0285fc34ef52c019d5f459be955f9ec89f3ff858ebc2c68b892f0"
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
