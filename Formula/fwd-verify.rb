
require_relative "../custom_download_strategy.rb"

class FwdVerify < Formula
  desc "Forward Networks Ansible Verification Module"
  version "v0.0.7"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/fwd-verify"
  sha256 "72978764205e4b9df9de2de5512b0cdd1f561058ccec5626ff7110316b8b2d94"

  bottle :unneeded

  def install
    prefix.install #{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}
  end

end
