cask "podlord" do
  # yuna-release: YunaBraska/podlord
  # yuna-release-asset: podlord-macos-arm64.zip
  # yuna-release-asset: podlord-macos-x64.zip
  arch arm: "arm64", intel: "x64"

  version "2026.9.28"
  sha256 arm:   "2a28a705fb0f38cb10aad1be61ebad57ff7b3979f8d37453ee3db08bf0ed6aa0",
         intel: "964c5beee769c933f7932e648368641ff887d53fab6b17ef6bd98884d74df738"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
