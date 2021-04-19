
require_relative "../custom_download_strategy.rb"

class Fwd-verify < Formula
  desc "Forward Networks Ansible Verification Module"
  version "v0.0.5"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/fwd-verify"
  sha256 "b60e8de605b35772383661df45573d8d5755bb56b279cb4b175d752457686950"

  bottle :unneeded

  def install
    prefix.install Dir["forwardnetworkswd-verify"]
  end

end
