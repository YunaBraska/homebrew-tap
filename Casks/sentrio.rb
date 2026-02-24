cask "sentrio" do
  version "2026.02.0551538"
  sha256 "ff3f444a34d798b95ecaf84c2fb09d999a1ee362d8da578135b437a93029ee41"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "macOS menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: ">= :ventura"

  app "Sentrio.app"
end
