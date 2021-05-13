
require_relative "../custom_download_strategy.rb"
require "fileutils"

class Jql < Formula
  desc "Forward JQL"
  version "v0.1.27"
  depends_on "borkdude/brew/babashka"
  urlSelect =   "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "f1af74933cc8a4df3654e9dc388ceb29e00c6cd0f0de4ffee811049beafb1152"

  bottle :unneeded

   def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end