
require_relative "../custom_download_strategy.rb"

class Jql < Formula
  desc "Forward JQL Tool"
  version "v0.1.4"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "6a4d69ccacb2d7942915cd1e69ec7aeed86856555abc9e3de32fa6dca714c8a1"

  bottle :unneeded

  def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end
