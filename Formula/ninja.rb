require_relative "../custom_download_strategy.rb"

class Ninja < Formula
  desc "Forward Ninja Admin Tool"
  version "v0.1.14"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos" : "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url #{urlSelect} , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "3ca28b61172d16692ad8de0139887eb567a93cfecdd41c13ea48bc7f4f50747a"


  bottle :unneeded
  print "Is MAC #{OS.mac?}\n"
  print "Installing fron #{url}\n"

  def install
    if url =~ /macos/i
      bin.install "ninja-#{version}-macos" => "ninja"
    else
      bin.install "ninja-#{version}-linux" => "ninja"
    end
  end

  test do
    system "ninja", "--help"
  end

end
