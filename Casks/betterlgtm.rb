cask "betterlgtm" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "c403972ed5fb0d68857e673df8d3245f2005c98fc164a0a94ab3f47a1acb72ff",
         intel: "f3a96e71ef1bfc705d0f69841b298bc74862e8aa44609e265c3dd40965174cc6"

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
