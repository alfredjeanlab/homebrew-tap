class Wok < Formula
  desc "Collaborative, offline-first, AI-friendly issue tracker"
  homepage "https://github.com/alfredjeanlab/wok"
  url "https://github.com/alfredjeanlab/wok/releases/download/v0.3.0/wok-0.3.0.tar.gz"
  sha256 "87713f779c3986bafd9d7a1c089e025fefe0cd951c3c118fcab1657d0d568aea"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--workspace"
    bin.install "target/release/wk" => "wok"
    bin.install "target/release/wk-remote"
    bin.install_symlink "wok" => "wk"
  end

  test do
    system "#{bin}/wok", "--help"
  end
end
