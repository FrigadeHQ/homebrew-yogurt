cask "yogurt" do
  version :latest
  sha256 :no_check

  url "https://github.com/FrigadeHQ/yogurt/releases/latest/download/Yogurt-mac-arm64.dmg"
  name "Yogurt"
  desc "Private, local meeting notes"
  homepage "https://yogurt.so/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Yogurt.app"

  zap trash: [
    "~/Library/Application Support/Yogurt",
    "~/Library/Caches/so.yogurt.app",
    "~/Library/Caches/so.yogurt.app.ShipIt",
    "~/Library/Logs/Yogurt",
    "~/Library/Preferences/so.yogurt.app.plist",
    "~/Library/Saved Application State/so.yogurt.app.savedState",
  ]
end
