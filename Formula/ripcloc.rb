class Ripcloc < Formula
  desc "Quickly counts lines of code by language"
  homepage "https://github.com/alfredjeanlab/ripcloc"
  url "https://github.com/alfredjeanlab/ripcloc/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a57c43e3bba5c8e7f5bfc854ccd139d4cc2b34f6a7e9cc35c1fc85dd8ab3adfb"
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
