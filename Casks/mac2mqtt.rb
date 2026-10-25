cask "mac2mqtt" do
  version "0.4.0"
  sha256 "af112435813571700abfeb88bb7aeae53bc935b62f83d768b5fd4b3652977b1c"

  url "https://github.com/FaintGhost/mac2mqtt/releases/download/v#{version}/Mac2MQTT-#{version}-universal.dmg"
  name "Mac2MQTT"
  desc "Report your Mac to Home Assistant over MQTT"
  homepage "https://faintghost.github.io/mac2mqtt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Mac2MQTT.app"

  zap trash: [
    "~/Library/Application Support/Mac2MQTT",
    "~/Library/Preferences/dev.mac2mqtt.app.plist",
  ]
end
