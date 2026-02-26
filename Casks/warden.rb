cask "warden" do
  version "1.02"
  sha256 "a9b79784efa7f5d6c61a20bf8c5524b36bc36d63d9840a1302dafcf498448358"

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
