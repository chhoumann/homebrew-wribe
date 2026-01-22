cask "wribe" do
  version "1.0.14"
  sha256 "47a58a0f18fcbbd1126ba79d704a36439aaf16f8abec9542c82157f0d9a95ca6"

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
