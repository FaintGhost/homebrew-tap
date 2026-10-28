cask "mac2mqtt" do
  version "0.4.4"
  sha256 "1e71f256945a3c110e209ca89c4c6fe1c8f9068b3630d22397768d723b91f660"

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
