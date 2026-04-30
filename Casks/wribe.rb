cask "wribe" do
  version "1.3.1"
  sha256 "60cd919de66a1e2742e2c283747b1223cbaf3d2fc1aa3dc68111c9d5213d6b59"

  url "https://releases.wribe.app/Wribe-#{version}.zip"
  name "Wribe"
  desc "AI-powered local audio transcription for macOS"
  homepage "https://wribe.app"

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
