cask "wribe" do
  version "1.0.3"
  sha256 "39ce99c79cd8e3a679b753ae033e55163592d251c35d909f1aed6ee17c57c4f3"

  url "https://releases.wribe.app/Wribe-#{version}.zip"
  name "Wribe"
  desc "AI-powered local audio transcription for macOS"
  homepage "https://wribe.app"

  livecheck do
    url "https://github.com/chhoumann/wribe/releases/latest"
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
