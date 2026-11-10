cask "mac2mqtt" do
  version "0.4.10"
  sha256 "446bc98a05154d34dbc6a17b39921d92372792fe6dcc803e0b4f9e4c39cb44a1"

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
