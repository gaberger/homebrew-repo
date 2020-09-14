require_relative "../custom_download_strategy.rb"

class Ninja < Formula
  desc "Forward Ninja Admin Tool"
  version "v0.1.14"
  url-select  = OS.mac? ? "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos" : "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url "#{url-select}" , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "3ca28b61172d16692ad8de0139887eb567a93cfecdd41c13ea48bc7f4f50747a"


  bottle :unneeded

  def install
    if url =~ /macos/i 
      bin.install i"ninja-#{version}-macos" => "ninja"
    else
      bin.install i"ninja-#{version}-linux" => "ninja"
    end
  end

  test do
    system "ninja", "--help"
  end

end
