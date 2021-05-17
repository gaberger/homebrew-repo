
require_relative "../custom_download_strategy.rb"
require "fileutils"

class Jql < Formula
  desc "Forward SF"
  version "v0.0.1"
  depends_on "borkdude/brew/babashka"
  urlSelect =   "https://github.com/firstclassfunc/sf/releases/download/#{version}/sf"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/sf"
  sha256 "712cd0f6850af28661138b41988e38d4a4a159b605d37555e0471649525e0bf5"

  bottle :unneeded

   def install
    bin.install "sf" => "sf"
  end

  test do
    system "sf", "--help"
  end

end