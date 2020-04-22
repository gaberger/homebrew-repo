class FwdNinja < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url  "https://github.com/gaberger/fwd-ninja/releases/download/v0.0.35/ninja"
  sha256 "236b3ab008fc583f99fdf482fbc5d72621d71a4a7c42f7b73a0287e2217cb840"

  bottle :unneeded

  def install
    bin.install "ninja"
  end

  test do
    system "#{bin}/ninja", "--help"
  end

end
