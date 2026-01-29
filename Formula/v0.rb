class V0 < Formula
  desc "A tool to ease you in to multi-agent vibe coding"
  homepage "https://github.com/alfredjeanlab/v0"
  url "https://github.com/alfredjeanlab/v0/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "4d05b5d662e1f79f0dd8bec04a98ae282291c754fad37cf4b86edb2c41ea678a"
  license "MIT"

  depends_on "alfredjeanlab/tap/wok"
  depends_on "flock"
  depends_on "jq"
  depends_on "ripgrep" => :recommended
  depends_on "tmux"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/v0", "--help"
  end
end
