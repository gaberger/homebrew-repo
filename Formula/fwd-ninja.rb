class FwdNinja < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url  "https://github.com/gaberger/fwd-ninja/releases/download/v0.0.37/ninja"
  sha256 "ced5464ab42913684afc11e63e9feed1f454114619fb87e9bfc4af40229e88e8"

  bottle :unneeded

  def install
    bin.install "ninja"
  end

  test do
    system "#{bin}/ninja", "--help"
  end

end
