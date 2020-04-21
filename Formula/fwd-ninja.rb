class FwdNinja < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url  "https://github.com/gaberger/fwd-ninja/releases/download/v0.0.34/ninja"
  sha256 "2044cd636ad04e02c87355c86b1f2b335eff66f18cb08f99fadf53fc97b68190"

  bottle :unneeded

  def install
    bin.install "ninja"
  end

  test do
    system "#{bin}/ninja", "--help"
  end

end
