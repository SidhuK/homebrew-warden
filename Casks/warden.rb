cask "warden" do
  version "1.08"
  sha256 "edc714d5421b13074344b9d2c449623be993388c8c71002b96d777b3829834e7"

  url "https://github.com/SidhuK/WardenApp/releases/download/v#{version}/Warden.zip"
  name "Warden"
  desc "Native AI chat client supporting 10+ providers"
  homepage "https://github.com/SidhuK/WardenApp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Warden.app"

  zap trash: [
    "~/Library/Application Support/Warden",
    "~/Library/Caches/com.SidhuK.Warden",
    "~/Library/Preferences/com.SidhuK.Warden.plist",
    "~/Library/Saved Application State/com.SidhuK.Warden.savedState",
  ]
end
