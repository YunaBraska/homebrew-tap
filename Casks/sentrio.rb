cask "sentrio" do
  version "2026.02.0551352"
  sha256 "eb2f61a5ab7f064002d320388050846b3acb4f64e5a0de94a3a92eb6d2e175f3"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "macOS menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: ">= :ventura"

  app "Sentrio.app"
end
