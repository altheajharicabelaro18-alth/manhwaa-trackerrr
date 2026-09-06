# My Manhwa Tracker — Installable GitHub Pages PWA

This version includes:
- 192×192 and 512×512 PWA icons
- maskable Android icon
- install button with browser fallback instructions
- service worker for offline use
- GitHub Pages-compatible relative paths
- localStorage-based manhwa data

## Replace your current GitHub files
Upload these files to the repository root and replace the old versions:

- index.html
- manifest.json
- sw.js
- icon-192.png
- icon-512.png
- icon-maskable-512.png
- .nojekyll (optional but included)
- README.md

Then wait for GitHub Pages to redeploy.

## Android / Chrome
Open the GitHub Pages site in Chrome. Tap **📲 Install App**.
If Chrome does not show its native prompt yet, use the Chrome menu (⋮) and choose
**Install app** or **Add to Home screen**.

## iPhone / iPad
Open the site in Safari, tap **Share**, then **Add to Home Screen**.

The tracker stores entries locally in the browser/device. It does not cloud-sync between devices.
