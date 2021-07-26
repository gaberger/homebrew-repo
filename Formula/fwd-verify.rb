
require "fileutils"
require "formula"
require_relative "lib/private_strategy.rb"

class FwdVerify < Formula
  desc "Forward Networks Ansible Verification Module"
  version "v0.0.18"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}-macos" : "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify-#{version}-linux"
  homepage "https://github.com/firstclassfunc/fwd-verify"
  url urlSelect , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "ffd5075a01692d29e4ae25dd00ded751217670a1017ef975a7b4c951fd9e7c3f" : "5e0be7bf21bcb582c295aee20998b7fde48b69f552d56e7a72c05b6dabcfb1e4"
  bottle :unneeded

  def install
    prefix.install "fwd-verify-#{version}"
    FileUtils.ln_s  "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify-#{version}", "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}/fwd-verify", force: true
  end
                         
end