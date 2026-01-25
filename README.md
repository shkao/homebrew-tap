# Homebrew Tap

A custom [Homebrew](https://brew.sh/) tap for installing my macOS applications.

## Usage

### Add the Tap

```bash
brew tap shkao/tap
```

### Install Applications

Once tapped, install any application from this repository:

```bash
brew install --cask <cask-name>
```

## Available Casks

| Cask | Description | Version |
|------|-------------|---------|
| [nami](#nami) | Japanese regional FM radio streaming menu bar app | 1.0.0 |

---

## Nami

A lightweight macOS menu bar app for streaming Japanese regional FM radio stations.

**Repository:** [shkao/Nami](https://github.com/shkao/Nami)

### Install

```bash
brew tap shkao/tap
brew install --cask nami
```

### Update

```bash
brew upgrade --cask nami
```

### Uninstall

```bash
brew uninstall --cask nami
```

### Features

- Stream 5 Japanese regional FM stations from the menu bar
- Real-time signal quality indicator
- Volume control with persistence
- Quick station switching
- Minimal resource usage (~30MB memory)

### Requirements

- macOS 14.0 (Sonoma) or later

---

## Troubleshooting

### App is blocked by macOS Gatekeeper

For unsigned apps, macOS may block the first launch:

1. Open **System Settings** → **Privacy & Security**
2. Scroll down to find the blocked app message
3. Click **Open Anyway**

Or right-click the app and select **Open** from the context menu.

### Cask installation fails

Try clearing the Homebrew cache:

```bash
brew cleanup
brew install --cask <cask-name>
```

## Contributing

To request a new cask or report issues:

1. Open an issue on this repository
2. Or submit a pull request with the cask formula

---

## Maintainer Guide

### Updating a Cask for New Releases

When a new version is released, update the cask formula:

1. **Get the new SHA256 checksum:**

   ```bash
   curl -sL https://github.com/shkao/Nami/releases/download/v1.1.0/Nami.zip | shasum -a 256
   ```

2. **Update the cask file** (`Casks/nami.rb`):

   ```ruby
   cask "nami" do
     version "1.1.0"  # Update version
     sha256 "new_sha256_here"  # Update checksum
     # ... rest unchanged
   end
   ```

3. **Update this README** with the new version in the Available Casks table.

4. **Commit and push:**

   ```bash
   git add Casks/nami.rb README.md
   git commit -m "chore(nami): bump to v1.1.0"
   git push
   ```

### Adding a New Cask

1. Create a new file in `Casks/<app-name>.rb`
2. Follow the [Homebrew Cask formula cookbook](https://docs.brew.sh/Cask-Cookbook)
3. Test locally: `brew install --cask ./Casks/<app-name>.rb`
4. Add entry to the Available Casks table in this README

### Testing Casks Locally

```bash
# Install from local file
brew install --cask ./Casks/nami.rb

# Verify cask info
brew info --cask shkao/tap/nami

# Audit cask for issues
brew audit --cask shkao/tap/nami
```

## License

MIT License
