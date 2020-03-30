class FwdNqe < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/nqe"
  url  "https://github.com/gaberger/fwd-nqe/releases/download/v0.0.6/nqe"
  sha256 "2eb5cea04c4efef2722b18d102c3dcd4e41ba9c65cb4f4f06b7421e822e62367"

  bottle :unneeded

  def install
    bin.install "nqe"
  end

  test do
    system "#{bin}/nqe", "--help"
  end

end
