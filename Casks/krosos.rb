# Homebrew cask TEMPLATE for Krosos desktop. The release workflow
# (.github/workflows/release-desktop.yml) renders this into the public tap repo
# (github.com/Krosos/homebrew-krosos, Casks/krosos.rb) on each release,
# substituting the `version` and `sha256` lines. Edit here, not in the tap.
cask "krosos" do
  version "2026.11.18.1"
  sha256 "822d4e55e3857e1dfa97ec398a989679eb757ff57ccdb93e4bb2fbacbb442687"

  url "https://github.com/Krosos/homebrew-krosos/releases/download/v#{version}/Krosos-#{version}-macos.zip"
  name "Krosos"
  desc "Private, local-first accounting and net-worth tracker"
  homepage "https://krosos.com"

  app "Krosos.app"

  caveats <<~EOS
    Krosos is not notarized (yet), so clear the Gatekeeper quarantine once:
      xattr -dr com.apple.quarantine /Applications/Krosos.app
    or approve the app via System Settings → Privacy & Security → "Open Anyway"
    after the first launch attempt. In-app updates handle this automatically.

    Your data stays on this machine: ~/Library/Application Support/Krosos/
  EOS
end
