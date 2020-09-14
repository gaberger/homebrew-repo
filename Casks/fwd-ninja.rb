cask "fwd-ninja" do
  version "v0.1.14"
  sha256 "1852ee59e2f87cf58247d64e728f7abdaed6ade7"

  url "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos"
  appcast "https://github.com/firstclassfunc/ninja/releases/download/#{version}/ninja-#{version}-macos"
  name "ninja"
  homepage "https:/foobar"
  app "ninja"
end
