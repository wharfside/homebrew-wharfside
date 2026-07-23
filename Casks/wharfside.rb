cask "wharfside" do
  version "0.1.1"
  sha256 "eb56cbbfbe139effc7c6cd3f0de56af71a2d77710e57e668f9e909a139a30308" # first field of the .sha256 file

  url "https://github.com/wharfside/wharfside/releases/download/v0.1.1/Wharfside.dmg"
  name "Wharfside"
  desc "On-device AI crash diagnosis for Apple's container runtime"
  homepage "https://wharfside.app/"

  auto_updates false
  # Requires macOS 26 (Tahoe) to use FoundationModels
  depends_on macos: :tahoe

  app "Wharfside.app"

  zap trash: [
    "~/Library/Application Support/Wharfside",
    "~/Library/Caches/app.wharfside.Wharfside",
    "~/Library/Preferences/app.wharfside.Wharfside.plist",
    "~/Library/Saved Application State/app.wharfside.Wharfside.savedState",
  ]
end
