class V0 < Formula
  desc "A tool to ease you in to multi-agent vibe coding"
  homepage "https://github.com/alfredjeanlab/v0"
  url "https://github.com/alfredjeanlab/v0/releases/download/v0.3.1/v0-0.3.1.tar.gz"
  sha256 "852bfee6c8ec872de0aa1a706070796886e368247344f666e8ea5b2c375acc76"
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
