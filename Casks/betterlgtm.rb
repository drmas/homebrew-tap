cask "betterlgtm" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "7c2e5b16c74dacf3a98f80c6026e97a82fde4d54f6b7f8d5188d3ad767c78537",
         intel: "98f70ee5143dcb550dcc03de8bf1a32adb5ea9fad5cc5e1d69e22b3988124bd3"

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
