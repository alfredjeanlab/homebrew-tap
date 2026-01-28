class V0 < Formula
  desc "A tool to ease you in to multi-agent vibe coding"
  homepage "https://github.com/alfredjeanlab/v0"
  url "https://github.com/alfredjeanlab/v0/releases/download/v0.3.0/v0-0.3.0.tar.gz"
  sha256 "9dffcf7a49d86d35c21f1a9fb2c507050aa9af49e3a5782c51d77345d97d6e28"
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
