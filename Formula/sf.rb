
require_relative "../custom_download_strategy.rb"
require "fileutils"

class Jql < Formula
  desc "Forward SF"
  version "v0.0.1"
  depends_on "borkdude/brew/babashka"
  urlSelect =   "https://github.com/firstclassfunc/sf/releases/download/#{version}/sf"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/sf"
  sha256 "f92e98e23b060ce963cdacc655ee02ca7b7bfe8f3a71bd0debe2b6cb9aa8a6e5"

  bottle :unneeded

   def install
    bin.install "sf" => "sf"
  end

  test do
    system "sf", "--help"
  end

end