cask "podlord" do
  # yuna-release: YunaBraska/podlord
  # yuna-release-asset: podlord-macos-arm64.zip
  # yuna-release-asset: podlord-macos-x64.zip
  arch arm: "arm64", intel: "x64"

  version "2026.8.24"
  sha256 arm:   "99803954c738ae1afae9a73957cff2d69c6a4dc609af4970a3b1aeb0f3dde807",
         intel: "c7cabbdb5f93683eaeca6e22614a409c5032a486c8db28f51b8f6f02403ca1b4"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
