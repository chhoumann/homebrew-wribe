cask "wribe" do
  version "1.0.6"
  sha256 "363e3bcdfb46605ecde6a87c253077cd726f93968823b4dcd1bfb0e2ef0e163c"

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
