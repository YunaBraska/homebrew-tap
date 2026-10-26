cask "sentrio" do
  # yuna-release: YunaBraska/Sentrio
  version "2026.10.26"
  # yuna-release-asset: Sentrio-{version}.zip
  sha256 "00ead6c9ab3974a7201575e8c1fdbc9e024db053f592d2587d9f087b5ce2c4a7"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "Menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: :ventura

  app "Sentrio.app"
end
