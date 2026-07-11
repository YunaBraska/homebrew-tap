cask "pearchha" do
  version "2026.7.11"
  sha256 "98617fcc58efc27ecbaa374e1901f75030b229d113e2f35b00f79945d51b65f8"

  url "https://github.com/YunaBraska/pearch_ha/releases/download/#{version}/PearchHA-#{version}.zip",
      verified: "github.com/YunaBraska/pearch_ha/"
  name "PearchHA"
  desc "macOS menu bar dashboard for Home Assistant"
  homepage "https://github.com/YunaBraska/pearch_ha"

  depends_on macos: ">= :ventura"

  app "PearchHA.app"
end
