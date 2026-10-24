cask "sentrio" do
  # yuna-release: YunaBraska/Sentrio
  version "2026.10.24"
  # yuna-release-asset: Sentrio-{version}.zip
  sha256 "7d0d3af5b02546221503774a0a20b0173d8fb73a834c4bb390e0beb0ff5f635c"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "Menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: :ventura

  app "Sentrio.app"
end
