class Trucker < Formula
  desc "Shares compiled crates between worktrees as a rustc wrapper"
  homepage "https://github.com/alfredjeanlab/trucker"
  url "https://github.com/alfredjeanlab/trucker/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "fc99f1a7b06cafc785e164fa35d112704f4f8ba54200dca9f81b641761bee5f6"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "usage", shell_output("#{bin}/trucker 2>&1", 2)
  end
end
