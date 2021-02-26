require_relative "../custom_download_strategy.rb"

class Jql < Formula
  desc "Forward JQL Tool"
  version "v0.0.8"
  depends_on "borkdude/brew/babashka"
  url "https://github.com/firstclassfunc/jql/blob/main/target/jql-#{version}.clj"
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "fa511699d7bdae262677ccc1317ac8f150ba6b1c2be2873c030fb3b2c39ef96a"

  bottle :unneeded

  def install
    bin.install "jql-#{version}.clj" => "jql"
  end

  test do
    system "jql", "--help"
  end

end
