cask "sentrio" do
  # yuna-release: YunaBraska/Sentrio
  version "2026.11.22"
  # yuna-release-asset: Sentrio-{version}.zip
  sha256 "82509e1a9c611c23293ff774d74294d067e20d5b36de385ae56c2915c717f7ec"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "Menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: :ventura

  app "Sentrio.app"
end
