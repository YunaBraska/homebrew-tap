cask "podlord" do
  arch arm: "arm64", intel: "x64"

  version "2026.6.20"
  sha256 arm:   "9fe8076a3b4c7c2b7ee7b6f22680e23b720ac185c0e1fbd94011e9a16c7b7618",
         intel: "ff00477eb458e980147372282cdefe989ababeea88ca3b4c76522299fa805210"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
