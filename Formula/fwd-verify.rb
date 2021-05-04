
require_relative "../custom_download_strategy.rb"
require "fileutils"

class FwdVerify < Formula
  desc "Forward Networks Ansible Verification Module"
  version "v0.0.9"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/fwd-verify"
  sha256 "04fd2036e3e9276ecb1077262361698ced9345ea4089778783a6db2ee4ac415a"

  bottle :unneeded

  def install
    prefix.install "fwd-verify-#{version}"
    FileUtils.ln_s  "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify-#{version}", "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify", force: true
  end
                         
end