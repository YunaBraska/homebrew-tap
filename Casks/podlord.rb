cask "podlord" do
  # yuna-release: YunaBraska/podlord
  # yuna-release-asset: podlord-macos-arm64.zip
  # yuna-release-asset: podlord-macos-x64.zip
  arch arm: "arm64", intel: "x64"

  version "2026.10.26"
  sha256 arm:   "d56188e6296c185d423f5c3a5766dc9b93341e03aec020594ba1cef83c9160f0",
         intel: "45dc6a3cabb651bf8c0abf90fb47df957c2fce5ef126583fa433afb620ed00f9"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
