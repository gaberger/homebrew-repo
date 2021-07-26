
require "fileutils"
require "formula"
require_relative "lib/private_strategy"

class FwdVerify < Formula
  desc "Forward Networks Ansible Verification Module"
  version "v0.0.18"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}-macos" : "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}-linux"
  homepage "https://github.com/firstclassfunc/fwd-verify"
  url urlSelect , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "null" : "null"
  bottle :unneeded

  def install
    prefix.install OS.mac? ? "fwd-verify-#{version}-macos" : "fwd-verify-#{version}-linux"
    FileUtils.ln_s  "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify-#{version}", "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify", force: true
  end
                         
end