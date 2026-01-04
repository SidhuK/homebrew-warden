cask "warden" do
  version "0.9.3"
  sha256 "e6eefe3e40d026ad851a224f1b42aeab3f85b58319ab87297ad6c59e1362b3ce"

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
