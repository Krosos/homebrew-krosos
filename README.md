# homebrew-krosos

Homebrew tap for the Krosos desktop app.

    brew install --cask Krosos/krosos/krosos
    xattr -dr com.apple.quarantine /Applications/Krosos.app

The app is not notarized yet; the xattr line clears the one-time Gatekeeper quarantine.
