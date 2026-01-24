class V0 < Formula
  desc "A tool to ease you in to multi-agent vibe coding"
  homepage "https://github.com/alfredjeanlab/v0"
  url "https://github.com/alfredjeanlab/v0/releases/download/v0.2.2/v0-0.2.2.tar.gz"
  sha256 "fd1f371dca5e3eadabbaf3997a06c32a083e35c05596cb225c4b853248867890"
  license "MIT"

  depends_on "alfredjeanlab/tap/wok"
  depends_on "flock"
  depends_on "jq"
  depends_on "tmux"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/v0", "--help"
  end
end
