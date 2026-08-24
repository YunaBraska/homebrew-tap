cask "sentrio" do
  # yuna-release: YunaBraska/Sentrio
  version "2026.8.17"
  # yuna-release-asset: Sentrio-{version}.zip
  sha256 "33061bad0ae643df518d821b0a8168dcd60bd9e49a62a07627a607cf04df11b7"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "Menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: :ventura

  app "Sentrio.app"
end
