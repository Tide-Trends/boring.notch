# Boring Notch + Guitar Tabs

> A fork of [TheBoringNotch](https://github.com/TheBoredTeam/boring.notch) with integrated Ultimate Guitar tab search, track sharing, and more.

<img src="https://img.shields.io/badge/macOS-14%2B-blue?style=flat-square" alt="macOS 14+"/> <img src="https://img.shields.io/badge/Swift-5.9-orange?style=flat-square" alt="Swift 5.9"/> <img src="https://img.shields.io/badge/License-GPL--3.0-green?style=flat-square" alt="GPL-3.0"/>

---

## What's New in This Fork

### Ultimate Guitar Integration

Search for guitar tabs and chords of whatever you're listening to — directly from the notch. One tap opens Ultimate Guitar with the current song's tabs.

- **Guitar Tabs button** in the music control slots — tap to search tabs for the currently playing song
- Works with Apple Music, Spotify, YouTube Music, and any NowPlaying-compatible app
- Configurable in Settings > Media > Guitar Tabs

### Share Track

Copy the current song title and artist to your clipboard with a single tap.

- **Share button** in the music control slots — copies "`Song Title - Artist Name`" to clipboard
- Visual confirmation with a checkmark animation

### Enhanced Control Slots

The music control toolbar now supports up to **7 slots** (up from 5), giving you room for the new Guitar Tabs and Share buttons alongside your existing controls.

### New Settings Panel

A dedicated **Guitar Tabs** settings page with:
- Toggle for enabling/disabling the integration
- Quick start guide
- Supported player compatibility info

---

## All Features (from upstream)

- **Music control center** — album art, playback controls, progress slider, lyrics
- **Music visualizer** — animated spectrogram synced to playback
- **Calendar integration** — upcoming events and reminders in the notch
- **File shelf** — drag and drop files to/from the notch, AirDrop support
- **System HUD replacement** — volume, brightness, keyboard backlight
- **Battery indicator** — charge level, charging status
- **Webcam mirror** — live camera preview in the notch
- **Multi-display support** — works on all screens or a preferred one
- **Lock screen support** — optionally visible on the lock screen
- **Customizable layout** — configurable control slots, sizing, and appearance

---

## Installation

### Requirements

- **macOS 14 Sonoma** or later
- Apple Silicon or Intel Mac
- **Xcode 16** or later (to build from source)

### Build from Source

```bash
git clone https://github.com/Tide-Trends/boring.notch.git
cd boring.notch
open boringNotch.xcodeproj
```

Press **Cmd + R** to build and run.

### First Launch

Since this isn't signed with an Apple Developer certificate, bypass Gatekeeper:

```bash
xattr -dr com.apple.quarantine /Applications/boringNotch.app
```

---

## Setting Up Guitar Tabs

1. Open **Settings** (star icon in the menu bar)
2. Go to **Media** > **Media controls**
3. Replace an empty slot with **Guitar Tabs** or **Share Track**
4. Play a song and open the notch — tap the guitar icon to search tabs

---

## Keyboard Shortcuts

| Action | Shortcut |
|--------|----------|
| Toggle sneak peek | Configurable in Settings |
| Toggle notch | Configurable in Settings |

For standalone guitar tab shortcuts, see the companion app [Tabs & Chords](https://github.com/Tide-Trends/tabs-and-chords).

---

## Credits

This is a fork of [boring.notch](https://github.com/TheBoredTeam/boring.notch) by [TheBoredTeam](https://github.com/TheBoredTeam). All original credits apply:

- **Hugo Persson**, **Harsh Vardhan Goswami**, **Richard Kunkli** — core development
- **SwiftUI** — for the UI framework
- **NotchDrop** — shelf feature inspiration
- **MediaRemoteAdapter** — NowPlaying on macOS 15.4+

Guitar Tabs integration by [Tide-Trends](https://github.com/Tide-Trends).

---

## License

[GPL-3.0](LICENSE) — same as the upstream project.
