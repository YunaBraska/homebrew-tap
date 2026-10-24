cask "squadspeak" do
  # yuna-release: YunaBraska/SquadSpeak
  # yuna-release-asset: squadspeak-macos-arm64.zip
  # yuna-release-asset: squadspeak-macos-x86_64.zip
  arch arm: "arm64", intel: "x86_64"

  version "2026.10.19"
  sha256 arm:   "d9706a0ed239b7b7392d71ab37c5427c5b0b63258e7ce02fbad9ce572e0ccaa7",
         intel: "0fe46a9bc492f620448dc0e3487db9a5fdb45fd9d3bcb9c072f7244461d1de3d"

  url "https://github.com/YunaBraska/SquadSpeak/releases/download/#{version}/squadspeak-macos-#{arch}.zip"
  name "SquadSpeak"
  desc "Voice and chat for local networks and private servers"
  homepage "https://github.com/YunaBraska/SquadSpeak"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "squadspeak.app"
  binary "#{appdir}/squadspeak.app/Contents/MacOS/squadspeak"
end
