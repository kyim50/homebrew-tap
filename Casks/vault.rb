cask "vault" do
  version "0.1.0"
  sha256 "2363007dd06e4f2e419d75107cf65b73c4592c04b74c4fa3c7339c1ee8fdb147"

  url "https://github.com/kyim50/vault-hud/releases/download/v#{version}/vault-#{version}-universal.dmg"
  name "vault"
  desc "Halftone pixel HUD that wraps Claude Code — repos, Obsidian vault, command deck, clay critter"
  homepage "https://github.com/kyim50/vault-hud"

  depends_on macos: :big_sur

  app "vault.app"

  caveats <<~EOS
    vault is unsigned. If macOS complains on first launch, either install with
      brew install --cask vault --no-quarantine
    or right-click vault.app → Open → Open (once).

    vault shells out to Claude Code — make sure `claude` is installed and
    logged in: https://claude.com/claude-code
  EOS

  zap trash: [
    "~/.vault-hud",
    "~/Library/Application Support/vault",
  ]
end
