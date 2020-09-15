require_relative "../custom_download_strategy.rb"

class Ninja < Formula
  desc "Forward Ninja Admin Tool"
  version "v0.1.14"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos" : "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "3ca28b61172d16692ad8de0139887eb567a93cfecdd41c13ea48bc7f4f50747a" : "025acb0ac5bddfe07833f7c58b867fd8455cee01906d8721a2466b41fa81f4d6"
  sha256 "025acb0ac5bddfe07833f7c58b867fd8455cee01906d8721a2466b41fa81f4d6"

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "ninja-#{version}-macos" => "ninja") : (bin.install "ninja-#{version}-linux" => "ninja")
  end

  test do
    system "ninja", "--help"
  end

end
