
require_relative "../custom_download_strategy.rb"

class Jql < Formula
  desc "Forward JQL Tool"
  version "v0.1.11"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "920e5ceabc233c8d15fe62df02e9867def8ece197a162ff341b514e0121b3861"

  bottle :unneeded

  def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end
