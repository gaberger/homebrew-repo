class FwdNinja < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url  "https://github.com/gaberger/fwd-ninja/releases/download/v0.1.1/ninja"
  sha256 "548bd7a9a8ebf53e4b3eb99d19f1ebbbd604ad6798e8599872a84415439a946aDa"


  bottle :unneeded

  def install
    bin.install "ninja"
  end

  test do
    system "#{bin}/ninja", "--help"
  end

end
