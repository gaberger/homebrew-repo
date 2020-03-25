class FwdNinja < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url  "https://github.com/gaberger/fwd-ninja/releases/download/0.0.33/ninja"
  sha256 "4d06d931942232ad978ace6d635433d00dfec0e825090d7ddae2a15cfd60993c"

  bottle :unneeded

  def install
    bin.install "ninja"
  end

  test do
    system "#{bin}/ninja", "--help"
  end

end
