class Wok < Formula
  desc "Collaborative, offline-first, AI-friendly issue tracker"
  homepage "https://github.com/alfredjeanlab/wok"
  url "https://github.com/alfredjeanlab/wok/releases/download/v0.3.2/wok-0.3.2.tar.gz"
  sha256 "9c420fa18548ce32890917ad222724c08b80876cb8b4672cae5f8237dd9145af"
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
