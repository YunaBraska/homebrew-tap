cask "podlord" do
  # yuna-release: YunaBraska/podlord
  # yuna-release-asset: podlord-native-macos-arm64.zip
  # yuna-release-asset: podlord-native-macos-x64.zip
  arch arm: "arm64", intel: "x64"

  version "2026.10.28"
  sha256 arm:   "80b49a16fd2bf58e7738fb00c96b3cb794832e9e3009f706a3b3c4e0a0d36f28",
         intel: "47f6aa175d591d274d8e38a1b8f2f6e74bbd01a405e063abd20d0c323deab378"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-native-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
