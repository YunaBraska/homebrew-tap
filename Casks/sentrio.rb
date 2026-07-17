cask "sentrio" do
  version "2026.07.1980531"
  sha256 "19c058dbd5c75efce4e3f88c31fff85c56ee8b235603895973d1b19f970d0d34"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "macOS menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: ">= :ventura"

  app "Sentrio.app"
end
