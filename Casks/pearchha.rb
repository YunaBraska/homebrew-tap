cask "pearchha" do
  # yuna-release: YunaBraska/pearch_ha
  version "2026.10.13"
  # yuna-release-asset: PearchHA-{version}.zip
  sha256 "7cc132e9e7de2bed5378b2e705a40630ddbd76ddb78904fd7dccc479da3032da"

  url "https://github.com/YunaBraska/pearch_ha/releases/download/#{version}/PearchHA-#{version}.zip",
      verified: "github.com/YunaBraska/pearch_ha/"
  name "PearchHA"
  desc "Menu bar dashboard for Home Assistant"
  homepage "https://github.com/YunaBraska/pearch_ha"

  depends_on macos: :ventura

  app "PearchHA.app"
end
