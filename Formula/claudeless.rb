class Claudeless < Formula
  desc "A Claude CLI simulator for integration testing"
  homepage "https://github.com/alfredjeanlab/claudeless"
  url "https://github.com/alfredjeanlab/claudeless/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "02dff7c60b576baa969cc712517a0f715972f44551cfc35c37c95844265a82e3"
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
