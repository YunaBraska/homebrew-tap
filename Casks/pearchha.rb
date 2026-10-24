cask "pearchha" do
  # yuna-release: YunaBraska/pearch_ha
  version "2026.10.24"
  # yuna-release-asset: PearchHA-{version}.zip
  sha256 "9e93eb45c91b9b10ebe4239e1d8891902ca0abf8519488bc9fd4d16f22925234"

  url "https://github.com/YunaBraska/pearch_ha/releases/download/#{version}/PearchHA-#{version}.zip",
      verified: "github.com/YunaBraska/pearch_ha/"
  name "PearchHA"
  desc "Menu bar dashboard for Home Assistant"
  homepage "https://github.com/YunaBraska/pearch_ha"

  depends_on macos: :ventura

  app "PearchHA.app"
end
