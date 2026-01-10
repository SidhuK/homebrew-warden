cask "warden" do
  version "0.9.4"
  sha256 "f2df38032c6c91f453f3f2a69731db832ac55913a3256084f2d29549bb70807e"

  url "https://github.com/SidhuK/WardenApp/releases/download/v#{version}/Warden.zip",
      verified: "github.com/SidhuK/WardenApp/"
  name "Warden"
  desc "Native macOS AI chat client supporting 10+ providers"
  homepage "https://github.com/SidhuK/WardenApp"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Warden.app"

  zap trash: [
    "~/Library/Application Support/Warden",
    "~/Library/Preferences/com.SidhuK.Warden.plist",
    "~/Library/Caches/com.SidhuK.Warden",
    "~/Library/Saved Application State/com.SidhuK.Warden.savedState",
  ]
end
