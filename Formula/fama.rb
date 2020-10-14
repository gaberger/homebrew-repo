require_relative "../custom_download_strategy.rb"

class Fama < Formula
  desc "Forward Ask Me Anything"
  version "v0.1.12"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-macos" : "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/fama"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "db55d7a1c13cd258f9208dc4beb3e80c986ada367e4dd12ea17b832ca122338f" : "0b0990239ded1bf561917337a23f6a50ecf86b1e9120d4c8171eafa82b10fcd0"
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "fama-#{version}-macos" => "fama") : (bin.install "fama-#{version}-linux" => "fama")
  end

  test do
    system "fama", "--help"
  end

end
