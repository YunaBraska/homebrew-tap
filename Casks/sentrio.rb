cask "sentrio" do
  version "2026.02.0551816"
  sha256 "d772865ac44f2cd2f7c1f21d6392cc57882132fe029d0fc50d501e0663675bb3"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "macOS menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: ">= :ventura"

  app "Sentrio.app"
end
