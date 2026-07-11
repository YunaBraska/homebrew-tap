cask "pearchha" do
  version "2026.7.11"
  sha256 "5c03d3d5914e063f54c2adbdda0818b405ed57f8bf0512b709f6b2f7bd97a046"

  url "https://github.com/YunaBraska/pearch_ha/releases/download/#{version}/PearchHA-#{version}.zip",
      verified: "github.com/YunaBraska/pearch_ha/"
  name "PearchHA"
  desc "macOS menu bar dashboard for Home Assistant"
  homepage "https://github.com/YunaBraska/pearch_ha"

  depends_on macos: ">= :ventura"

  app "PearchHA.app"
end
