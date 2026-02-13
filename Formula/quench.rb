class Quench < Formula
  desc "A fast linting tool for AI agents that measures quality signals"
  homepage "https://github.com/alfredjeanlab/quench"
  url "https://github.com/alfredjeanlab/quench/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "9673750fb0457ebaed754c4351b1e41ea0668ef0b4a76945185e596a8412e714"
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
