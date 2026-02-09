class Claudeless < Formula
  desc "A Claude CLI simulator for integration testing"
  homepage "https://github.com/alfredjeanlab/claudeless"
  url "https://github.com/alfredjeanlab/claudeless/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "616ba53ef0b1075f75c0e781a650657c24aa209ddba295dc7a05108805eabbe8"
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
