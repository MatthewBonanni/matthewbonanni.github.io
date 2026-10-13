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

[MBTA Departure Board](https://matthewbonanni.github.io/mbta-board/) is a small web app I built to answer one question at a glance: when do I need to leave? It lives on an old iPad by my door, but it runs in any browser. You pick the stops, routes and directions you care about, and it shows the next few departures for each, live from the MBTA's public API. There's no account, no API key, and no backend; your board is saved in the browser and can be exported to move it to another device.

Set a starting point and it estimates the walk to each stop, then tells you when to leave for the first departure you can still make: "Leave in 6 min, for the 1:42 PM, 5 min walk." The walking times come from free OpenStreetMap services and are computed once, not on every refresh.

I cared most about the board being honest about what it knows:

- Realtime predictions count down in minutes. Bus times that are really schedule-based estimates are marked "Est." and shown as clock times.
- If an update fails, the board stops claiming to be live right away. Old times stay visible only as "Last known" clock times, never as a countdown.
- "No predictions right now" and "can't reach the MBTA" are different messages, and the board only says "no service" when an active service alert says so.

The look borrows from 1970s federal graphic design: a strict grid, Helvetica, thin rules, and color reserved for route identity. (The screenshot above uses the app's fictional demo data.)

To put it on an iPad, open the link in Safari and choose Share → Add to Home Screen. It's an unofficial project, not affiliated with the MBTA. The source is on [GitHub](https://github.com/MatthewBonanni/mbta-board).
