
require_relative "../custom_download_strategy.rb"
require "fileutils"

class Jql < Formula
  desc "Forward JQL"
  version "v0.1.29"
  depends_on "borkdude/brew/babashka"
  urlSelect =   "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "df5cc0a5bb0fdf82429ad3d4dce96c87e6a91187667c84def54053917c41abf9"

  bottle :unneeded

   def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end