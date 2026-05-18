# InfinityOS Branding Assets

Place finished artwork here before building the ISO.
The build system copies these into the correct locations automatically.

## Required files

| File | Size | Used for |
|------|------|----------|
| `wallpaper-3840x2160.png` | 3840×2160px | Desktop wallpaper (4K, scales down) |
| `infinity-logo.svg` | Vector | KDE app launcher button, about screen |
| `infinity-small.svg` | Vector, ~32px | Top panel logo |
| `sddm-background.png` | 1920×1080px | Login screen background |

## Wallpaper spec

The mockup shows:
- Deep dark purple/blue gradient background
- Mountain silhouette at the bottom
- Glowing horizon line (purple → pink gradient)
- InfinityOS logo centered with "InfinityOS" wordmark below
- Subtitle: "BUILT ON DEBIAN STABLE • KDE"
- Subtle circuit/network pattern overlay at low opacity

If no wallpaper is placed here, the build generates a simple dark
purple gradient placeholder so the ISO still boots with the right colors.

## Logo spec

The ∞ (infinity) symbol:
- Gradient fill: purple (#8A4FFF) → blue (#4F8AFF) → pink (#FF4FA0)
- Clean, modern, no drop shadow
- Works on both dark and light backgrounds (for future use)
