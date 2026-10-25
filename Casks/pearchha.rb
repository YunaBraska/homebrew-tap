cask "pearchha" do
  # yuna-release: YunaBraska/pearch_ha
  version "2026.10.25"
  # yuna-release-asset: PearchHA-{version}.zip
  sha256 "4649c0e86dea38b203e26d0df3c5be0a519c3b2451a103d2303f994792a5e355"

  url "https://github.com/YunaBraska/pearch_ha/releases/download/#{version}/PearchHA-#{version}.zip",
      verified: "github.com/YunaBraska/pearch_ha/"
  name "PearchHA"
  desc "Menu bar dashboard for Home Assistant"
  homepage "https://github.com/YunaBraska/pearch_ha"

  depends_on macos: :ventura

  app "PearchHA.app"
end
