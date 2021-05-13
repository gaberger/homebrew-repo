
require_relative "../custom_download_strategy.rb"
require "fileutils"

class Jql < Formula
  desc "Forward JQL"
  version "v0.1.29"
  depends_on "borkdude/brew/babashka"
  urlSelect =   "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "1be201f82bde21b799fa8359f2513dd38ab9183cbd994cfdfca85e01940832eb"

  bottle :unneeded

   def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end