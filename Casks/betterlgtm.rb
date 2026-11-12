cask "betterlgtm" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "c2730a0fbebaeae1116c002fb06c6e8dca0d651f054375e038d066baf508b543",
         intel: "ca8a62d9bf1b0d07bcbe0e2b849af8d3e6260311a26ed9cd1a7455614af705bf"

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
