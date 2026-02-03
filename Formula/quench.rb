class Quench < Formula
  desc "A fast linting tool for AI agents that measures quality signals"
  homepage "https://github.com/alfredjeanlab/quench"
  url "https://github.com/alfredjeanlab/quench/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "2e6230e1583aae3c242111033aa2877f88e8fec5422af728c9fe81bae4fca2bb"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--workspace"
    bin.install "target/release/quench"

    generate_completions_from_executable(bin/"quench", "completions")
  end

  test do
    system "#{bin}/quench", "--help"
  end
end
