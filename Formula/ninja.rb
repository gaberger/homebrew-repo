require_relative "../custom_download_strategy.rb"

class Ninja < Formula
  desc "Forward Ninja Admin Tool"
  version "v0.1.18"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos" : "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "cc22339be58b9882252fc203b589658b3850160d62140692c31c34504d9069d8" : "e8d8db36aadc7b1ec76b385649d34c4927e8bf86d45424841b56edb624d139a4"
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "ninja-#{version}-macos" => "ninja") : (bin.install "ninja-#{version}-linux" => "ninja")
  end

  test do
    system "ninja", "--help"
  end

end
