require_relative "../custom_download_strategy.rb"

class Fama < Formula
  desc "Forward Ask Me Anything"
  version "v0.1.13"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-macos" : "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/fama"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "1a1fa36654816f34df2f8f8d9729e6ae128181891af2afb7990c91af57f2e328" : "4ac163f5a793a314197849a696da2c9cf326da2280c5dec12b0f696cfbfcce5c"
  sha256 sha
  bottle :unneeded

  def install
    OS.mac? ? (bin.install "fama-#{version}-macos" => "fama") : (bin.install "fama-#{version}-linux" => "fama")
  end

  test do
    system "fama", "--help"
  end

end
