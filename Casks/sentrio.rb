cask "sentrio" do
  version "2026.02.0540820"
  sha256 "e95d0227f0d935a7ba2e7a93a937497b645278f7bb86264cb46e2be5260436bc"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "macOS menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: ">= :ventura"

  app "Sentrio.app"
end
