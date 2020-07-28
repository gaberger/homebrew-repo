class FwdNqe < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/nqe"
  url  "https://github.com/gaberger/fwd-nqe/releases/download/v0.2.3/nqe"
  sha256 "a2841dd717038c1f12f4d081c7334758d932328da762fbee16b1f0d6e2d8b81d"


  bottle :unneeded

  def install
    bin.install "nqe"
  end

  test do
    system "#{bin}/nqe", "--help"
  end

end
