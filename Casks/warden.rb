cask "warden" do
  version "0.9.5"
  sha256 "d7c78c44ebb63a78bef970dffd6682c611bb49af8e12fc3ff04d032becdeebb5"

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
