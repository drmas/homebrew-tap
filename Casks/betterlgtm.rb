cask "betterlgtm" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "1e88b5a76fe3a4df8d7e87e521c6406de71d779dd27a8174ce9c0e6f8e96533a",
         intel: "2fbdc1228eb18b9547ff9d710bf539c91c4c6861e6bdf20360232a4fb8e13078"

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
