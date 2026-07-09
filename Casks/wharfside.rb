cask "wharfside" do
  version "0.1.0"
  sha256 "REPLACE_WITH_CONTENTS_OF_Wharfside.dmg.sha256" # first field of the .sha256 file

  url "https://github.com/wharfside/wharfside/releases/download/v#{version}/Wharfside.dmg"
  name "Wharfside"
  desc "Native macOS GUI for apple/container with on-device AI log diagnosis"
  homepage "https://wharfside.app"

  auto_updates false
  # Requires macOS 26 (Tahoe) to use FoundationModels
  depends_on macos: :tahoe

  app "Wharfside.app"

  # CHECK: confirm this matches CFBundleIdentifier in Info.plist.
  zap trash: [
    "~/Library/Application Support/Wharfside",
    "~/Library/Caches/app.wharfside.Wharfside",
    "~/Library/Preferences/app.wharfside.Wharfside.plist",
    "~/Library/Saved Application State/app.wharfside.Wharfside.savedState",
  ]
end