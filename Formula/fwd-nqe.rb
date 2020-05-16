class FwdNqe < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/nqe"
  url  "https://github.com/gaberger/fwd-nqe/releases/download/v0.0.9/nqe"
  sha256 "d92e8cee61683cc1e9abe32b284a3e63c4d6d3ba4f1e132cb6b05cef117a31c8"


  bottle :unneeded

  def install
    bin.install "nqe"
  end

  test do
    system "#{bin}/nqe", "--help"
  end

end
