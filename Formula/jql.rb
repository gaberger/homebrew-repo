
require_relative "../custom_download_strategy.rb"

class Jql < Formula
  desc "Forward JQL Tool"
  version "v0.1.25"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "909c791c569145a992397df883bec40a2ba5b9d23b1f0ff9d9d4034383c0b180"

  bottle :unneeded

  def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end
