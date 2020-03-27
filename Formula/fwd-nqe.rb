class FwdNqe < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/nqe"
  url  "https://github.com/gaberger/fwd-nqe/releases/download/v0.0.2/nqe"
  sha256 "da4995bd3a7005b148af33dcb078a10c88c8c38dd0b5bc41f0c75e38234ae495"

  bottle :unneeded

  def install
    bin.install "nqe"
  end

  test do
    system "#{bin}/nqe", "--help"
  end

end
