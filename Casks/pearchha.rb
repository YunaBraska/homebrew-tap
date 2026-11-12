cask "pearchha" do
  # yuna-release: YunaBraska/pearch_ha
  version "2026.11.11"
  # yuna-release-asset: PearchHA-{version}.zip
  sha256 "71ccca37eec07539b30562d6577b11591c5e3910fd95e2c44dc3617aedd466e7"

  url "https://github.com/YunaBraska/pearch_ha/releases/download/#{version}/PearchHA-#{version}.zip",
      verified: "github.com/YunaBraska/pearch_ha/"
  name "PearchHA"
  desc "Menu bar dashboard for Home Assistant"
  homepage "https://github.com/YunaBraska/pearch_ha"

  depends_on macos: :ventura

  app "PearchHA.app"
end
