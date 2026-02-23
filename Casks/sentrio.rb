cask "sentrio" do
  version "2026.02.0542219"
  sha256 "1f9b1992c63605d10bba590b853d1c2ce3107264bc224c555878c7e8ad2a8d9e"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "macOS menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: ">= :ventura"

  app "Sentrio.app"
end
