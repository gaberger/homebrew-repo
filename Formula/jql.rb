
require_relative "../custom_download_strategy.rb"
require "fileutils"

class Jql < Formula
  desc "Forward JQL"
  version "v0.1.31"
  depends_on "borkdude/brew/babashka"
  urlSelect =   "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "6f88b49b644e7bc8d30d391645a81c9ca9bc8f0b8291769735299198a2548fc5"

  bottle :unneeded

   def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end