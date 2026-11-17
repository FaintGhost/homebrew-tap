cask "mac2mqtt" do
  version "0.4.15"
  sha256 "5880e81c55d3bb557c014995c9fde6a53f8da79ae93bf5b7fcc00f0123d5519d"

  url "https://github.com/FaintGhost/mac2mqtt/releases/download/v#{version}/Mac2MQTT-#{version}-universal.dmg"
  name "Mac2MQTT"
  desc "Report your Mac to Home Assistant over MQTT"
  homepage "https://faintghost.github.io/mac2mqtt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Mac2MQTT.app"

  zap trash: [
    "~/Library/Application Support/Mac2MQTT",
    "~/Library/Preferences/dev.mac2mqtt.app.plist",
  ]
end
