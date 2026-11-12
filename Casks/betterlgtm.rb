cask "betterlgtm" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "75dbb29208946f29bcff4f4b6346fca3f5db3dbd1d2385d7a85dcac285ae81ad",
         intel: "472be8dd7631c98a632e4854f893a1ce4e1772abf41cea6a918855b0c6b51b5b"

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
