SEA DOMINION — ISLES OF THE OPEN SEA
=====================================

This is a new, separate sea-strategy edition. It does not overwrite Kingdom Conquest.

FILES
-----
index.html       Main game screen
style.css        Responsive interface and visual design
game.js          Animated sea chart, islands, ships, pirates, trading, exploration and saves
README.txt       This guide
online_setup.sql Starter notes for a future online backend

HOW TO PLAY
----------
1. Open index.html in a modern browser, or upload all files to the ROOT of a GitHub Pages repository.
2. Tap an island on the chart to select it.
3. Tap "Sail to island" to travel there. Sailing consumes provisions.
4. Tap open water and choose "Sail / Explore" to chart new islands, find salvage, or encounter pirates.
5. Select a pirate marker on the chart and use "Fight pirates" to battle.
6. Use "Trade" at a free harbor to buy provisions or timber.
7. Build boats with 120 gold, 35 timber, and 4 crew. Repair damaged ships with gold.
8. Use Save / Load to store the voyage in this browser on this device.

GRAPHICS
--------
The animated ocean, waves, chart grid, islands, palm trees, reefs, ships, pirate markers, compass and map labels are drawn by the game code. The game does not need external image files. The interface is designed to adapt to phone screens.

ONLINE MULTIPLAYER — IMPORTANT
------------------------------
True online players cannot be enabled just by adding more static files. GitHub Pages serves HTML, CSS and JavaScript but does not run a multiplayer server. The Online Harbor button explains this limitation. To support real accounts, shared islands, player-to-player trading and battles, connect a backend such as Supabase Realtime and configure authentication, database tables, secure access policies and server-side validation.

The included online_setup.sql is a starter outline, not a complete production backend. Do not put a secret/service-role key in any public file. Do not trust client-side requests to change gold, ships, combat outcomes or island ownership.

MOBILE / GITHUB PAGES
---------------------
Keep index.html, style.css and game.js in the same folder. Upload all three files to the repository root (or ensure the Pages publishing folder contains them). In GitHub, open Settings > Pages and publish from the intended branch/folder. Wait for the build to finish, then open the published URL.

Save data is stored in localStorage in that browser on that device. It does not automatically sync to another device, and clearing site data can erase the save.
