class Wok < Formula
  desc "Collaborative, offline-first, AI-friendly issue tracker"
  homepage "https://github.com/alfredjeanlab/wok"
  url "https://github.com/alfredjeanlab/wok/releases/download/v0.2.0/wok-0.2.0.tar.gz"
  sha256 "4dad929ddbdc10b49576ceba7c097c84270a5887b8c905cbb4e7083a949e8448"
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
