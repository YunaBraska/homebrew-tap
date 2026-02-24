cask "sentrio" do
  version "2026.02.0551437"
  sha256 "803a9774aeaecaf5642b376eb14b7845f9dfaff0b6da2ad704c8ababb77a8540"

  url "https://github.com/YunaBraska/Sentrio/releases/download/#{version}/Sentrio-#{version}.zip",
      verified: "github.com/YunaBraska/Sentrio/"
  name "Sentrio"
  desc "macOS menu bar app that auto-switches audio devices"
  homepage "https://github.com/YunaBraska/Sentrio"

  depends_on macos: ">= :ventura"

  app "Sentrio.app"
end
