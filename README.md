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

## License

MIT License
