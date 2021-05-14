
require_relative "../custom_download_strategy.rb"
require "fileutils"

class Jql < Formula
  desc "Forward JQL"
  version "v0.1.30"
  depends_on "borkdude/brew/babashka"
  urlSelect =   "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "6b6a8547cb3c736c3ee9ca978a6f0b815067b1aefcad97ae4d2ced90dff5f958"

  bottle :unneeded

   def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end