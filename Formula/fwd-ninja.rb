require_relative "../custom_download_strategy.rb"

class FwdNinja < Formula
  desc "Forward Ninja Admin Tool"
  version "v0.1.14"
  # url-pat  = OS.mac? ? "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-macos" : "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url  "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos" , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "1852ee59e2f87cf58247d64e728f7abdaed6ade7"


  bottle :unneeded

  def install
    bin.install "ninja"
  end

  test do
    system "#{bin}/ninja", "--help"
  end

end
