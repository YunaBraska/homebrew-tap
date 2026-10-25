cask "sentrio" do
  # yuna-release: YunaBraska/Sentrio
  version "2026.10.25"
  # yuna-release-asset: Sentrio-{version}.zip
  sha256 "2e022fcbc288814b6d80190c0d52d7ad0cdf73ca9bf1a6ae64abba88a2533e60"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "Menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: :ventura

  app "Sentrio.app"
end
