
require_relative "lib/private_strategy"
require "formula"
require "fileutils"

class Jql < Formula
  desc "Forward JQL"
  version "v0.1.32"
  depends_on "borkdude/brew/babashka"
  urlSelect =   "https://github.com/firstclassfunc/jql/releases/download/#{version}/jql"
  url urlSelect , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "7ea6710e666223a0d599ede95f47036dec1217aa70ed40daa4cba3d818ec8373"

  bottle :unneeded

   def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end
