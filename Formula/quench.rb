class Quench < Formula
  desc "A fast linting tool for AI agents that measures quality signals"
  homepage "https://github.com/alfredjeanlab/quench"
  url "https://github.com/alfredjeanlab/quench/releases/download/v0.1.0/quench-0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
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
