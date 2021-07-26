require "fileutils"
require "formula"
require_relative "lib/private_strategy"


class Ninja < Formula
  desc "Forward Ninja Admin Tool"
  version "v0.1.28"
  urlSelect = OS.mac? ? "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos" : "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-linux"
  homepage "https://gerrit.local.forwardnetworks.com/plugins/gitiles/ninja"
  url urlSelect , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha = OS.mac? ? "d277d913b7cc01d1de11ac464e1539b66ff1c178ae11d206d3986073cd61beee" : "b126ad009c2be13fcd5ea0409ca29df3a327e8c7a152058154b4ee5817ae9915"
  sha256 sha

  bottle :unneeded

  def install
    OS.mac? ? (bin.install "ninja-#{version}-macos" => "ninja") : (bin.install "ninja-#{version}-linux" => "ninja")
  end

  test do
    system "ninja", "--help"
  end

end
