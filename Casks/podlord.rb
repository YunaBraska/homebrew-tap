cask "podlord" do
  # yuna-release: YunaBraska/podlord
  # yuna-release-asset: podlord-macos-arm64.zip
  # yuna-release-asset: podlord-macos-x64.zip
  arch arm: "arm64", intel: "x64"

  version "2026.8.14"
  sha256 arm:   "5c74034b3cd388b199a14b5adc56b7a1d420b54d24f15382a43640e5ea1463ca",
         intel: "14a84976d2db28cf8d06bc1d6ef34ec54e32dd5b94df97a2606626cd34c1e1a8"

  url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-macos-#{arch}.zip"
  name "Podlord"
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"

  depends_on macos: :monterey

  app "Podlord.app"
end
