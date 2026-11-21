class Trucker < Formula
  desc "Shares compiled crates between worktrees as a rustc wrapper"
  homepage "https://github.com/alfredjeanlab/trucker"
  url "https://github.com/alfredjeanlab/trucker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f4b6a09e41f83e14a681da8595e83f4cdcc68d594a9d27209cad1c3ed10f9327"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "usage", shell_output("#{bin}/trucker 2>&1", 2)
  end
end
