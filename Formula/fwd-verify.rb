
require_relative "../custom_download_strategy.rb"
require "fileutils"

class FwdVerify < Formula
  desc "Forward Networks Ansible Verification Module"
  version "v0.0.15"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/fwd-verify"
  sha256 "df44602ef2ca854497fc433bb3dbe46c6774bc1e03df1c9fe790aa9bb50df663"

  bottle :unneeded

  def install
    prefix.install "fwd-verify-#{version}"
    FileUtils.ln_s  "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify-#{version}", "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify", force: true
  end
                         
end