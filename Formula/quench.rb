class Quench < Formula
  desc "A fast linting tool for AI agents that measures quality signals"
  homepage "https://github.com/alfredjeanlab/quench"
  url "https://github.com/alfredjeanlab/quench/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "3890579888a262afbd5cbd74c24528dceadb23b7532d786f4a84466ad7ac5b98"
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
