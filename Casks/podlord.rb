cask "podlord" do
  # yuna-release: YunaBraska/podlord
  # yuna-release-asset: podlord-macos-arm64.zip
  # yuna-release-asset: podlord-macos-x64.zip
  arch arm: "arm64", intel: "x64"

  version "2026.10.12"
  sha256 arm:   "150215dd378960343b41a66ad635d2898b4d3c51ec1a60d1553b69dbd4d536d4",
         intel: "d97f15a3ba015048a19838544ec35460d2adf89540619c75f507608b1c5c09be"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
