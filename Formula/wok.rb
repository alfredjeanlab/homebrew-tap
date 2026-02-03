class Wok < Formula
  desc "Collaborative, offline-first, AI-friendly issue tracker"
  homepage "https://github.com/alfredjeanlab/wok"
  url "https://github.com/alfredjeanlab/wok/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "4e9f5a91e129e097141036830198853c455aaa95d7cf0191aa66adbd20384c71"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--workspace"
    bin.install "target/release/wk" => "wok"
    bin.install "target/release/wk-remote"
    bin.install_symlink "wok" => "wk"

    generate_completions_from_executable(bin/"wok", "completion")
  end

  test do
    system "#{bin}/wok", "--help"
  end
end
