class Wok < Formula
  desc "Collaborative, offline-first, AI-friendly issue tracker"
  homepage "https://github.com/alfredjeanlab/wok"
  url "https://github.com/alfredjeanlab/wok/releases/download/v0.2.1/wok-0.2.1.tar.gz"
  sha256 "a05a10931d531d25c1bd30872315d6743ecb838ebd71886c56a8f009f06480d9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--workspace"
    bin.install "target/release/wk"
    bin.install "target/release/wk-remote"
  end

  test do
    system "#{bin}/wk", "--help"
  end
end
