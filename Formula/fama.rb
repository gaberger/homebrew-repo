require_relative "../custom_download_strategy.rb"

class Fama < Formula
  desc "Forward Ask Me Anythingl"
  version "v0.1.11"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-macos" : "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/fama"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "ef719d71c6d90393c51caf4a1c69037014b04e278edd093916ade21c3e64e9cd" : "0b0990239ded1bf561917337a23f6a50ecf86b1e9120d4c8171eafa82b10fcd0"
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "fama-#{version}-macos" => "fama") : (bin.install "fama-#{version}-linux" => "fama")
  end

  test do
    system "fama", "--help"
  end

end
