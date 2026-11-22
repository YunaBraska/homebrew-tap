cask "pearchha" do
  # yuna-release: YunaBraska/pearch_ha
  version "2026.11.21"
  # yuna-release-asset: PearchHA-{version}.zip
  sha256 "d2ea739713d9b2efaed82d5438319d1849a48cc3f2fe79aed59ca608afa17181"

  url "https://github.com/YunaBraska/pearch_ha/releases/download/#{version}/PearchHA-#{version}.zip",
      verified: "github.com/YunaBraska/pearch_ha/"
  name "PearchHA"
  desc "Menu bar dashboard for Home Assistant"
  homepage "https://github.com/YunaBraska/pearch_ha"

  depends_on macos: :ventura

  app "PearchHA.app"
end
