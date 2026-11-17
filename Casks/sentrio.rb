cask "sentrio" do
  # yuna-release: YunaBraska/Sentrio
  version "2026.11.17"
  # yuna-release-asset: Sentrio-{version}.zip
  sha256 "1ce4dae041776fbd0c66a762af615124905a2f9ecbf94973b46ddb664a62184f"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "Menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: :ventura

  app "Sentrio.app"
end
