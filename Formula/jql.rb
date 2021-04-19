
require_relative "../custom_download_strategy.rb"

class Jql < Formula
  desc "Forward Verification Ansible Module"
  version "v0.0.1"
  depends_on "borkdude/brew/babashka"
  urlSelect =  "https://github.com/firstclassfunc/fwd-verify/releases/download/#{version}/fwd-verify"
  url urlSelect, :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy  
  homepage "https://github.com/firstclassfunc/jql"
  sha256 "945683a6b481a56732800cc5118f5396d57d57d7000334dd4103b52516a2eff6"

  bottle :unneeded

  def install
    bin.install "jql" => "jql"
  end

  test do
    system "jql", "--help"
  end

end
