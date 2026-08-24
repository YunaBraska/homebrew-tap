cask "pearchha" do
  # yuna-release: YunaBraska/pearch_ha
  version "2026.8.13"
  # yuna-release-asset: PearchHA-{version}.zip
  sha256 "8eae246d33385212dbb15d0da55e018dd129d51105979084e87d82da3933cbef"

  url "https://github.com/YunaBraska/pearch_ha/releases/download/#{version}/PearchHA-#{version}.zip",
      verified: "github.com/YunaBraska/pearch_ha/"
  name "PearchHA"
  desc "Menu bar dashboard for Home Assistant"
  homepage "https://github.com/YunaBraska/pearch_ha"

  depends_on macos: :ventura

  app "PearchHA.app"
end
