class FwdNqe < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/nqe"
  url  "https://github.com/gaberger/fwd-nqe/releases/download/v0.0.12/nqe"
  sha256 "812f9bd92e5921f599c0cbe79d14ed34f8d871e377bbf4527404d4def61658e5"


  bottle :unneeded

  def install
    bin.install "nqe"
  end

  test do
    system "#{bin}/nqe", "--help"
  end

end
