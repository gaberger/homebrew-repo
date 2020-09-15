require_relative "../custom_download_strategy.rb"

class Ninja < Formula
  desc "Forward Ninja Admin Tool"
  version "v0.1.14"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos" : "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url urlSelect , :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "de05eca7360a3a00b4bc349899997775fd0872dc8242535019a207928061a29d" : "1675ec5041e3d7ea4cbc4b3b197e9ac74cc81dd073bc1f7e3dd9854fddfe752e"
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "ninja-#{version}-macos" => "ninja") : (bin.install "ninja-#{version}-linux" => "ninja")
  end

  test do
    system "ninja", "--help"
  end

end
