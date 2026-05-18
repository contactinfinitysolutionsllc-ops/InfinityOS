# InfinityOS

**A privacy-first Linux distribution built on Debian Stable.**  
Gaming-ready. Surveillance-resistant. Local AI built in. No one owns it.

---

## What it is

InfinityOS is a Debian Bookworm-based Linux distribution with one goal: give people a complete, usable desktop operating system that respects their privacy and runs their software — including Windows games — without phoning home to anyone.

It is free. It will stay free. GPL v3.

## What's included out of the box

| Category | What you get |
|----------|-------------|
| **Desktop** | KDE Plasma — familiar, fast, fully configurable |
| **Windows compatibility** | Wine-Staging + Proton-GE, `.exe` auto-routing, Steam pre-installed |
| **Game launchers** | Steam, Heroic (Epic + GOG), Lutris |
| **Performance** | GameMode, MangoHud, Vulkan drivers |
| **Privacy** | Firewall on by default, encrypted DNS (dnscrypt-proxy), MAC randomization, telemetry blocked at hosts level, AppArmor |
| **Security** | InfinityGuard AV (coming), kernel hardening, sandboxed Wine prefixes |
| **Local AI** | Phi-3.5-mini running via llama.cpp — answers questions about your system, helps fix problems, no cloud |
| **Mod organizer** | InfinityMO — manage mods for 40+ games |
| **Encryption** | Full disk encryption option during install, KeePassXC |

## What it is NOT

- A server OS (use plain Debian for that)
- An anonymity OS (use Tails for that)
- Spyware
- Anyone's product

## Building

### CI (GitHub Actions)
Push a version tag — the ISO builds automatically and publishes as a GitHub Release:
```bash
git tag v1.0.0 && git push --tags
```

### Local build (requires Debian or Ubuntu + sudo)
```bash
sudo apt-get install live-build
sudo bash scripts/build-local.sh
```

## Architecture

```
Debian Stable (Bookworm) + backports
  └── KDE Plasma
  └── Privacy layer (firewall, DNS, MAC, hosts)
  └── Kernel hardening (sysctl)
  └── Wine-Staging + Proton-GE + DXVK/VKD3D
  └── Steam + Heroic + Lutris
  └── llama.cpp AI service (localhost:8080)
  └── InfinityMO
  └── InfinityGuard AV (in development)
```

## License

GPL v3. Nobody owns this. Everybody can use it, modify it, distribute it.  
Nobody can take it proprietary.

## Project family

| Project | What it is |
|---------|-----------|
| **InfinityOS** | This — the operating system |
| **InfinityGuard** | Antivirus and behavioral security suite |
| **InfinityMO** | Universal mod organizer for 40+ games |
