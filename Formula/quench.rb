class Quench < Formula
  desc "A fast linting tool for AI agents that measures quality signals"
  homepage "https://github.com/alfredjeanlab/quench"
  url "https://github.com/alfredjeanlab/quench/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "4ec408aca830175908c45901004a890eb2ef8d254b9c62bc1ab12afb2df13d1d"
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
