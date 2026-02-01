class V0 < Formula
  desc "A tool to ease you in to multi-agent vibe coding"
  homepage "https://github.com/alfredjeanlab/v0"
  url "https://github.com/alfredjeanlab/v0/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "70b06f45beb3873a5787e731278ec14916680f1d58b68f24884bcc9c8baece98"
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
