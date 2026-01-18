cask "wribe" do
  version "1.0.2"
  sha256 "f3d0f61634a084530af713292e37a23ed3b409a8bd2b9372314242d8ef78c6e1"

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
