cask "betterlgtm" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "1bf2ecaf438803b1141ce5132583153499d6fa5c94f833a62e4487b74099c422",
         intel: "b9ea45b8976b5a992d0436c9fd1aadb522b2190d50481e7d8f5233edd8f12cac"

  url "https://github.com/drmas/betterlgtm/releases/download/v#{version}/BetterLGTM_#{version}_#{arch}.dmg"
  name "BetterLGTM"
  desc "Review GitHub pull requests with Claude Code"
  homepage "https://drmas.github.io/betterlgtm/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app installs its own updates from the status bar.
  auto_updates true
  depends_on :macos

  app "BetterLGTM.app"

  zap trash: [
    "~/Library/Application Support/io.weekone.betterlgtm",
    "~/Library/Caches/io.weekone.betterlgtm",
    "~/Library/Preferences/io.weekone.betterlgtm.plist",
    "~/Library/Saved Application State/io.weekone.betterlgtm.savedState",
    "~/Library/WebKit/io.weekone.betterlgtm",
  ]
end
