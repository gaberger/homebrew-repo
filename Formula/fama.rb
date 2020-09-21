require_relative "../custom_download_strategy.rb"

class Fama < Formula
  desc "Forward Ask Me Anythingl"
  version "v0.1.9"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-macos" : "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/fama"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "d945051bfd400f8165cd6d5d87a867aa6cfaba329a44f92ccce59f3396cd170a" : "f553e74c10d8a6f60336a6d6cd5da5c2a33b272449abd416846a0786228c5607"
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "fama-#{version}-macos" => "fama") : (bin.install "fama-#{version}-linux" => "fama")
  end

  test do
    system "fama", "--help"
  end

end
