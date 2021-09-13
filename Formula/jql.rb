
require_relative "lib/private_strategy"
require "fileutils"

class Jql < Formula
  desc "Forward JQL"
  version "v0.1.32"
  depends_on "borkdude/brew/babashka"
  urlSelect =   "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "97cfd9dbd28a13ec91ffd907c6c3ee9fa82bff0bab6be5c6e84f68cec9dd1f80"

  bottle :unneeded

   def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end