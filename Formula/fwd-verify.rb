
require "fileutils"
require "formula"
require_relative "lib/private_strategy"

class FwdVerify < Formula
  desc "Forward Networks Ansible Verification Module"
  version "v0.0.18"
  versionFile = OS.mac? ?  "fwd-verify-#{version}-macos" : "fwd-verify-#{version}-linux"                        
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}-macos" : "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}-linux"
  homepage "https://github.com/firstclassfunc/fwd-verify"
  url urlSelect , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "a2285fe35285aa08b64f879b46b649930d1ceb70576cc533eda15c669a9675e3" : "93e67ef9b817489677749b9c90d2f87a3c91d70012ae31d24876ab7ea567dd3b"
  bottle :unneeded

  def install
    bin.install @@versionFile => "fwd-verify"
                     
    #FileUtils.ln_s  "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/#{versionFile}", "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify", force: true
  end
                         
end