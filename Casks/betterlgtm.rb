cask "betterlgtm" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "e8f1834989ac1aba0916e19ff95582bdfde48a5519894690352bcd1f3f792d54",
         intel: "9f7c4f0921278d1d66f4f93f10279c0155b3656784e8a40a4582363cf7762a4d"

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
