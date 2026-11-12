cask "sentrio" do
  # yuna-release: YunaBraska/Sentrio
  version "2026.11.11"
  # yuna-release-asset: Sentrio-{version}.zip
  sha256 "188b0d35e274a7471b06f8aacbaa26d44d41b4940e00fba0b7c6f399fea06e68"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "Menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: :ventura

  app "Sentrio.app"
end
