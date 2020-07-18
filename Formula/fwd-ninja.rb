class FwdNinja < Formula
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url  "https://github.com/gaberger/fwd-ninja/releases/download/v0.1.7/ninja"
  sha256 "5a4611ea36ee58e5dba718e896f38fc3a78d336866877bb78cf54663760add73"


  bottle :unneeded

  def install
    bin.install "ninja"
  end

  test do
    system "#{bin}/ninja", "--help"
  end

end
