cask "wribe" do
  version "1.3.4"
  sha256 "6861979d44448d4590ee877083b581d189107e42247c8fc3571ca9fac1f9f534"

  url "https://wribe-releases.bagerbach.com/Wribe-#{version}.zip"
  name "Wribe"
  desc "AI-powered local audio transcription for macOS"
  homepage "https://wribe.bagerbach.com"

  livecheck do
    url "https://github.com/chhoumann/wribe/releases/latest"
    strategy :github_latest
  end

  app "Wribe.app"

  zap trash: [
    "~/Library/Application Support/Wribe",
    "~/Library/Caches/Wribe",
    "~/Library/Preferences/com.chhoumann.wribe.plist",
  ]
end
