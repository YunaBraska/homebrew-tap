cask "podlord" do
  # yuna-release: YunaBraska/podlord
  # yuna-release-asset: podlord-macos-arm64.zip
  # yuna-release-asset: podlord-macos-x64.zip
  arch arm: "arm64", intel: "x64"

  version "2026.10.19"
  sha256 arm:   "381b85a00ef6c24a520a6c9604c052c21c6aed58fdc75aa716c981a26ace9fe3",
         intel: "22fa9910217e68ee6b7e88ffff7ef17cccc9f443bdb9e3610da4262c2b63fdc4"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
