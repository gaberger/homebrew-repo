class FwdNinja < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url  "https://github.com/gaberger/fwd-ninja/releases/download/v0.1.4/ninja"
  sha256 "261432d83641f0ac1bd34301aab5aaefc70e899ce79b60215c6d36c67e2f689e"


  bottle :unneeded

  def install
    bin.install "ninja"
  end

  test do
    system "#{bin}/ninja", "--help"
  end

end
