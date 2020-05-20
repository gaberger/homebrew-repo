class FwdNinja < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url  "https://github.com/gaberger/fwd-ninja/releases/download/v0.0.40/ninja"
  sha256 "78f1397d3fa9ccd8ae14a162ad6167c029e3045d3e7b86354f31164a1cd5d5de"


  bottle :unneeded

  def install
    bin.install "ninja"
  end

  test do
    system "#{bin}/ninja", "--help"
  end

end
