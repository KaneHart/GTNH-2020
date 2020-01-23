## Server Changes

This is a list of server side changes we make and need to keep an eye from. Things like modified quests to mods we have to remove, include, etc. This is not a place for special information, ideas or plans that belongs in the main Readme file one directory above this. 

### Removed Mods:
* **LootGames-1.7.10-1.0.18.jar** - One Boring game, cheap loot, more world gen.
* **roguelike-1.7.10-1.5.0b.jar** - easily exploitable, cheap loot, more world gen, makes messy world at times.
* **RWG-alpha-1.3.2.jar** - Old World Generator

### Added Mods:
* RTG-1.7.10-1.1.1.7.jar - New World Gen - Modified with Lava Lakes
* ClimateControl-0.8.2.jar - Climate Control For New World Gen
* forgeessentials-1.7.10-1.4.6.0-server.jar - Our main Permissions System / Command Handlers.
* worldedit-forge-mc1.7.10-6.1.1-SNAPSHOT-dist.jar - Comes with Forge Essentials
* Insomnia-1.7.10-1.0.1.jar - Prevents Sleeping but Allows Saving Respawn.
* MyTown2-1.7.10-0.5.1GTNH.jar - Our Main Protection System
* MyEssentials-Core-1.7.10-1.19GTNH-universal.jar - Required Lib For MyTown
* MyPermissions-1.7.10-0000r.jar - Required Lib for MyTown (We used FE Perms)
* CanIJoinNow-1.7.10-1.0-3.jar - Shows you the time on the server.
* DiscordIntegration-mc1.7.10-3.0.5.jar - Allows Discord / In Game Chat to Link
* NoPortals-1.7.10-1.0.0.jar - Removes End Portal Spawn if Dragon Killed in Overworld. 
* ServerTabInfo-1.7.10-Final-b3.jar - Gives Extra Info about TPS / MS, etc in TAB window. 

### World Gen:
* **Added Mods Required For Worldgen:**
* Chunk+Pregenerator+V1.7.10-2.1.jar - Chunk Gen
* Chicken+Chunk+Patcher+1.1.jar - Patch To Prevent Crash
* **Speed Up Commands**
* /pregen timepertick 250
* /pregen utils setPriority Pregenerator
* **Worlds To Pregen Commands:**
* Overworld: /pregen gen startradius square 0 0 b16000
* Overworld: /pregen gen startexpansion square 0 0 1000 1016
* Nether: /pregen gen startradius square 0 0 b16000 -1
* Nether: /pregen gen startexpansion square 0 0 1000 1016 -1
* Twilight: /pregen gen startradius square 0 0 b16000 7
* Twilight: /pregen gen startexpansion square 0 0 1000 1016 7

