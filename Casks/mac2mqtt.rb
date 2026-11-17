cask "mac2mqtt" do
  version "0.4.16"
  sha256 "aac7668ba1291743a01ee72befce573ff4811d4347fde8bf38872751cec03068"

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
