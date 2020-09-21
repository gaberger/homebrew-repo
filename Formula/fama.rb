require_relative "../custom_download_strategy.rb"

class Fama < Formula
  desc "Forward Ask Me Anythingl"
  version "v0.1.10"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-macos" : "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/fama"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "e394d999e6e6f779764993327b3eac8cf2673a2e2dafea2edb602fdaec280acf" : "6a7b6f525b9913d7cefc8bc6bad085a924e41956973831ba0af541937ed8518e"
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "fama-#{version}-macos" => "fama") : (bin.install "fama-#{version}-linux" => "fama")
  end

  test do
    system "fama", "--help"
  end

end
