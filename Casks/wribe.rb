cask "wribe" do
  version "1.0.0"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/chhoumann/wribe/releases/download/v#{version}/Wribe-#{version}.zip"
  name "Wribe"
  desc "AI-powered local audio transcription for macOS"
  homepage "https://github.com/chhoumann/wribe"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Wribe.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Wribe.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Wribe",
    "~/Library/Caches/Wribe",
    "~/Library/Preferences/com.chhoumann.wribe.plist",
  ]
end
