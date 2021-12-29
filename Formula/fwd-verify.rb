
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
  sha = OS.mac? ? "a2285fe35285aa08b64f879b46b649930d1ceb70576cc533eda15c669a9675e3" : "62dcc233ac264ee55153b8d068e9add54b440b65994c354f858ddcadaa7f9736"
  
  def install
    @versionFile = OS.mac? ?  "fwd-verify-#{version}-macos" : "fwd-verify-#{version}-linux"
    bin.install @versionFile => "fwd-verify"
  end              
end