class Wok < Formula
  desc "Collaborative, offline-first, AI-friendly issue tracker"
  homepage "https://github.com/alfredjeanlab/wok"
  url "https://github.com/alfredjeanlab/wok/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "94f7fb64cfa7a1ff7273149d8b1ee0f5dfbbc925b9a42152a78b57d3465d336d"
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
