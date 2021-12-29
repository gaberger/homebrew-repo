class FwdNqe < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/nqe"
  url  "https://github.com/gaberger/fwd-nqe/releases/download/v0.2.3/nqe"
  sha256 "774d5464626031d80a70f6124bf3df0328c9cfa2a47dcfb5c6adb8587fa55d31"



  def install
    bin.install "nqe"
  end

  test do
    system "#{bin}/nqe", "--help"
  end

end
