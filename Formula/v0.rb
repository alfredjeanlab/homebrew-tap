class V0 < Formula
  desc "A tool to ease you in to multi-agent vibe coding"
  homepage "https://github.com/alfredjeanlab/v0"
  url "https://github.com/alfredjeanlab/v0/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "5a052a2efb546d7486e9afa1afe7453986d0c2b9bfee93e388918df328d629be"
  license "MIT"

  depends_on "alfredjeanlab/tap/wok"
  depends_on "flock"
  depends_on "jq"
  depends_on "ripgrep" => :recommended
  depends_on "tmux"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    # Install each package's lib directory preserving package names
    Dir["packages/*"].each do |pkg|
      next unless File.directory?("#{pkg}/lib")
      (prefix/pkg).install "#{pkg}/lib"
    end
  end

  test do
    system "#{bin}/v0", "--help"
  end
end
