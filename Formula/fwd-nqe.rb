class FwdNqe < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/nqe"
  url  "https://github.com/gaberger/fwd-nqe/releases/download/v0.0.13/nqe"
  sha256 "687cfe6682c9ad020d37ec521de96e356779fad56f14c67da5256b85e6b35020"


  bottle :unneeded

  def install
    bin.install "nqe"
  end

  test do
    system "#{bin}/nqe", "--help"
  end

end
