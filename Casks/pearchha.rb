cask "pearchha" do
  # yuna-release: YunaBraska/pearch_ha
  version "2026.11.16"
  # yuna-release-asset: PearchHA-{version}.zip
  sha256 "7120ab013899dc7aadacc1cf0b5b2659d7210852e0b914d279d93780fef97411"

  url "https://github.com/YunaBraska/pearch_ha/releases/download/#{version}/PearchHA-#{version}.zip",
      verified: "github.com/YunaBraska/pearch_ha/"
  name "PearchHA"
  desc "Menu bar dashboard for Home Assistant"
  homepage "https://github.com/YunaBraska/pearch_ha"

  depends_on macos: :ventura

  app "PearchHA.app"
end
