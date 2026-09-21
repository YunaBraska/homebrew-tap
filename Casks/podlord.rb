cask "podlord" do
  # yuna-release: YunaBraska/podlord
  # yuna-release-asset: podlord-macos-arm64.zip
  # yuna-release-asset: podlord-macos-x64.zip
  arch arm: "arm64", intel: "x64"

  version "2026.9.21"
  sha256 arm:   "a081a3fdf0deb34a4c292459af196ab11fa102dc91a112e66f341ad56f2057f5",
         intel: "43408e5b995ef7aa2064ba497a5948bfd4f4f1990e2e39ae41b76b4515065b34"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
