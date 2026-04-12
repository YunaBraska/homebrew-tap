cask "sentrio" do
  version "2026.04.1020843"
  sha256 "433cea66e139d93801aeadcb585a4f71e4dc33f5496f8d12246d73d963173aeb"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "macOS menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: ">= :ventura"

  app "Sentrio.app"
end
