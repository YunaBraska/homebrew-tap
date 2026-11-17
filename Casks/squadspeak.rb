cask "squadspeak" do
  # yuna-release: YunaBraska/SquadSpeak
  # yuna-release-asset: squadspeak-macos-arm64.zip
  # yuna-release-asset: squadspeak-macos-x86_64.zip
  arch arm: "arm64", intel: "x86_64"

  version "2026.11.16"
  sha256 arm:   "f605748f9861854ecf923556b05e0c54865702e054057246bb362cb10f995a7f",
         intel: "51b996d72903fcd4191f356f9fbe0666acaae785cf1891506cfcaf0ff4026ac4"

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
