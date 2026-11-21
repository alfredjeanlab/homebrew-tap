class Ripcloc < Formula
  desc "Quickly counts lines of code by language"
  homepage "https://github.com/alfredjeanlab/ripcloc"
  url "https://github.com/alfredjeanlab/ripcloc/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "8eb78a1dd12401f9454117af52de518f71bf06f03ccb061d74e140b70d84c386"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    (testpath/"main.rs").write "fn main() {}\n"
    assert_match "Rust", shell_output("#{bin}/ripcloc #{testpath}")
  end
end
