require_relative "../custom_download_strategy.rb"

class Fama < Formula
  desc "Forward Ask Me Anythingl"
  version "v0.1.8"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-macos" : "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/fama"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "889122d78d4163ef407dece5a803ef97d1932fc0fb9734a4492aa3444930be4c" : "e770e6817fe9297a5a9505bde822f1f029f210d0a31c72289fbdbcdf96e2c759"
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "fama-#{version}-macos" => "fama") : (bin.install "fama-#{version}-linux" => "fama")
  end

  test do
    system "fama", "--help"
  end

end
