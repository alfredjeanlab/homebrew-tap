class Wok < Formula
  desc "Collaborative, offline-first, AI-friendly issue tracker"
  homepage "https://github.com/alfredjeanlab/wok"
  url "https://github.com/alfredjeanlab/wok/releases/download/v0.3.1/wok-0.3.1.tar.gz"
  sha256 "52d556bcbc7b318c7d1ed25cef99c2f311694647ddd08f2bcd484047e26ed905"
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
