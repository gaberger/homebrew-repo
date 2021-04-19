
require_relative "../custom_download_strategy.rb"
require "fileutils"

class FwdVerify < Formula
  desc "Forward Networks Ansible Verification Module"
  version "v0.0.10"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/fwd-verify"
  sha256 "e4019dba6f53cd86e79e5a21b06f5763f3cbb4c93d50ec6245650b66719c7c00"

  bottle :unneeded

  def install
    prefix.install "fwd-verify-#{version}"
    FileUtils.ln_s  "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify-#{version}", "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify", force: true
  end
                         
end