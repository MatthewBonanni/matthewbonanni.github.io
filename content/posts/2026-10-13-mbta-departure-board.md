---
title: "MBTA Departure Board"
date: 2026-10-13
tags: ["web", "transit"]
cover:
  image: /images/posts/mbta-board/cover.png
  alt: "The departure board showing fictional demo stops"
headerImage: /images/posts/mbta-board/preview.png
---

<div style="text-align: center; margin-bottom: 1.5rem;">
<a href="https://matthewbonanni.github.io/mbta-board/" style="display: inline-flex; align-items: center; gap: 0.5rem; padding: 0.5rem 1.2rem; border: 1px solid var(--border); border-radius: 6px; text-decoration: none; color: var(--primary); font-size: 0.95rem;">MBTA Departure Board →</a>
</div>

I wanted a departure board by my front door, so I built one. [MBTA Departure Board](https://matthewbonanni.github.io/mbta-board/) is a static web page that shows the next departures for whichever stops, routes and directions you add. Mine runs full-screen on an old iPad, but it works in any browser. It pulls times from the MBTA's public API every 30 seconds. Settings are stored in the browser, and you can export them to a file to move them to another device.

If you enter a starting address, it estimates the walk to each stop with OpenStreetMap routing and shows when to leave for the next departure you can still make, e.g. "Leave in 6 min, for the 1:42 PM, 5 min walk".

Not every time in the MBTA feed is a live prediction. Buses that haven't started their trip report schedule-based times, so the board shows those as clock times marked "Est." instead of counting down. If a refresh fails, the board drops its "Live" label right away and marks the old times "Last known".

The design is modeled on 1970s US government graphics: Helvetica, a strict grid, thin rules, and color only for route badges. The screenshot above uses fictional demo data.

To install it on an iPad, open the link in Safari and choose Share → Add to Home Screen. The source is on [GitHub](https://github.com/MatthewBonanni/mbta-board). It isn't affiliated with the MBTA.
