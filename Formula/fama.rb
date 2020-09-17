require_relative "../custom_download_strategy.rb"

class Fama < Formula
  desc "Forward Ask Me Anythingl"
  version "v0.1.7"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-macos" : "https://github.com/firstclassfunc/fama/releases/download/#{version}/fama-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/fama"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "8b135441742032d85f01b3243aa11f6677e5b7219866069ff31978fe8788980b" : "d5346182465feb969db348a63808cefad65c4ab8ce584a975d5fa79cdd0a5e3a"
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "fama-#{version}-macos" => "fama") : (bin.install "fama-#{version}-linux" => "fama")
  end

  test do
    system "fama", "--help"
  end

end
