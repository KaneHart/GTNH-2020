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
* Nether: /pregen gen startradius square 0 0 b16000 -1
* Twilight: /pregen gen startradius square 0 0 b16000 7

### DefaultQuests.json Changes:
* **Nether, Twilight, End Text Update:**
* Search: ```"name:8": "§3§m§l§m§4§3§lTHE NETHER",```
* Search: ```"name:8": "Searching for answers",```
* Search: ```"name:8": "Is this the End? No the END Dimension",```
* Replace: ```"desc:8": "```
* With: ```"desc:8": "§4WARNING: Nether, Twilight Forest and End Portals are disabled. You must search the World for an Active Bunker (3 of 12) that can provide you access to the other Dimensions. \n\n§f§0§r```
* **Anchor to Personal Anchor Change:**
* Find / Replace: ```Railcraft:cart.anchor```
* With: ```Railcraft:cart.anchor.personal```
* **Personal Chunloading Quest Change:**
* Find: ```"name:8": "§5§lPersonal Chunkloading",```
* Replace Full Line: ```desc:8": "Let\u0027s craft some personal chunkloaders.```
* With: ```"desc:8": "Let\u0027s craft some personal chunkloaders. 3x3 chunks are loaded. You need coins to power the chunkloader that is locked up in MV Tier.\n\nChunk Loader Coin I Can Power Passive Anchor for 12 Hours and a Personal Anchor for 24 Hours. There is 4 Other Tiers of the Coin that increase the fuel time in the Anchors.\n\nPersonal Anchors are loaded  once the owner visits, and stays loaded while the player is logged in. \n\nPassive Anchors are loaded once the owner visits, and stays loaded until the server resets."```
