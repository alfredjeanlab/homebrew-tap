class V0 < Formula
  desc "A tool to ease you in to multi-agent vibe coding"
  homepage "https://github.com/alfredjeanlab/v0"
  url "https://github.com/alfredjeanlab/v0/releases/download/v0.2.1/v0-0.2.1.tar.gz"
  sha256 "dd7db726ff1a3ce14f3ae097b3e6b692555a9bee6eadd3b64d095737b24ea4c6"
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
