# DynamicStage

> A notch-first control center for macOS with guitar workflows, supported-feed notifications, and an in-notch settings popover.

<img src="https://img.shields.io/badge/macOS-14%2B-blue?style=flat-square" alt="macOS 14+"/> <img src="https://img.shields.io/badge/Swift-5.9-orange?style=flat-square" alt="Swift 5.9"/> <img src="https://img.shields.io/badge/License-GPL--3.0-green?style=flat-square" alt="GPL-3.0"/>

---

## What's New

### Dedicated Guitar Button (Always Visible)

The guitar control is now a dedicated notch-header button (not slot-dependent).

- **Single-click**: search Ultimate Guitar for the currently playing track
- **Double-click**: play the currently open Ultimate Guitar tab in Apple Music
- Dedicated shortcuts: `Option-Command-T` and `Option-Command-P`
- Works with Apple Music, Spotify, YouTube Music, and NowPlaying-compatible apps

### Notch Notification Cards

DynamicStage can show supported feed notifications directly in the notch:

- Calendar events
- Reminders updates
- Messages unread summaries (best effort)
- Mail unread summaries (best effort)
- Per-source toggles, compact card mode, quiet mode, and display duration controls

### Notch-Anchored Settings Popover

Settings now open as a notch-anchored popover instead of a separate app-style settings window.

### Share Track

Copy the current song title and artist to your clipboard with a single tap.

- **Share button** in the music control slots — copies "`Song Title - Artist Name`" to clipboard
- Visual confirmation with a checkmark animation

### Enhanced Control Slots

The music control toolbar now supports up to **7 slots** (up from 5), giving you room for the new Guitar Tabs and Share buttons alongside your existing controls.

### Rebrand

- New name: **DynamicStage**
- New app icon and refreshed settings visual header

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

## Updates

- **Automatic checks**: DynamicStage checks for updates on launch (configurable in Settings → About).
- **Menu bar**: "Check for Updates" in the DynamicStage menu.
- **Manual download**: Settings → About → "Download latest" opens the [releases page](https://github.com/Tide-Trends/boring.notch/releases).

For signed Sparkle updates, add `SPARKLE_PRIVATE_KEY` to your repo secrets and run `generate_appcast` when creating releases.

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

1. Open **Settings** from the menu bar or notch
2. Go to **Guitar Tabs**
3. Enable guitar integration and optional double-click playback
4. Open notch and use the dedicated orange guitar button in the header

---

## Keyboard Shortcuts

| Action | Shortcut |
|--------|----------|
| Toggle sneak peek | Configurable in Settings |
| Toggle notch | Configurable in Settings |
| Search tabs for current track | Option-Command-T |
| Play from open UG tab in Apple Music | Option-Command-P |

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
