cask "warden" do
  version "1.03"
  sha256 "9ce649bb3aae6730591b384ffdfd4bfe3fc51e687da08866624440a732841e12"

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
