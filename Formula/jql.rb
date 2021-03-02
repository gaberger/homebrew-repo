
require_relative "../custom_download_strategy.rb"

class Jql < Formula
  desc "Forward JQL Tool"
  version "v0.1.0"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "5e1ef7e958075044fad8bf9547eabfa4a060722c6f2e9471f8ac8062c4ef7d3d"

  bottle :unneeded

  def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end
