cask "warden" do
  version "1.01"
  sha256 "d62d29ca6edbe64977b8fb9d2058894cf2a123e9027764adafb1fdabc96eefef"

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
