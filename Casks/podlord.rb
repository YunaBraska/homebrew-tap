cask "podlord" do
  # yuna-release: YunaBraska/podlord
  # yuna-release-asset: podlord-macos-arm64.zip
  # yuna-release-asset: podlord-macos-x64.zip
  arch arm: "arm64", intel: "x64"

  version "2026.9.7"
  sha256 arm:   "f5e9f217f7d99c4336861889a9901ec216bbb951a01059353d431530ea5d4932",
         intel: "6a2a31b7911492259c5580286d145f45aebad3c21a2162c2f68116c892bcc661"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
