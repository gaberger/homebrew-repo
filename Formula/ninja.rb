require_relative "../custom_download_strategy.rb"

class Ninja < Formula
  desc "Forward Ninja Admin Tool"
  version "v0.1.15"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos" : "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "1769484fbf31e6fe1be664ac04ef0349ab8f5f548e952a434c40436f05d68c88" : "e8d8db36aadc7b1ec76b385649d34c4927e8bf86d45424841b56edb624d139a4""
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "ninja-#{version}-macos" => "ninja") : (bin.install "ninja-#{version}-linux" => "ninja")
  end

  test do
    system "ninja", "--help"
  end

end
