class FwdNqe < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/nqe"
  url  "https://github.com/gaberger/fwd-nqe/releases/download/v0.0.4/nqe"
  sha256 "24fa51fdeedea45c2e7a9453630e713019d18bc38adfa7da52294b929ea98852"

  bottle :unneeded

  def install
    bin.install "nqe"
  end

  test do
    system "#{bin}/nqe", "--help"
  end

end
