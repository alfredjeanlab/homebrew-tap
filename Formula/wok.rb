class Wok < Formula
  desc "Collaborative, offline-first, AI-friendly issue tracker"
  homepage "https://github.com/alfredjeanlab/wok"
  url "https://github.com/alfredjeanlab/wok/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "d4b26925671616583df39cc6337ac62baa73f0e9d0e28c94f32d851d94e7250c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--workspace"
    bin.install "target/release/wok"
    bin.install "target/release/wokd"

    generate_completions_from_executable(bin/"wok", "completion")
  end

  test do
    system "#{bin}/wok", "--help"
  end
end
