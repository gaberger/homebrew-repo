
require_relative "../custom_download_strategy.rb"

class Jql < Formula
  desc "Forward JQL Tool"
  version "v0.0.2"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "72b754bf889f791076bb951ea7fe59eb818787f8ff51666a15b9c878d9902533"

  bottle :unneeded

  def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end
